# Extern Compatibility Issues

Bugs found when generating externs for three.js r182 + haxiomic-engine with dts2hx on Haxe 4.3.6.
These block real-world usage of dts2hx with modern TypeScript libraries.

---

## EC-1: `function new()` in structure types

**Severity:** Compile error
**Affected:** 10+ files (TypedArray constructors, lodash MapCacheConstructor, vue Constructor, etc.)
**Test:** `test/e2e/modules/extern-compat.d.ts` — `WidgetFactory`

TypeScript interfaces with construct signatures (`new(args): T`) are converted to Haxe typedefs with `function new()`. Haxe 4.3+ does not allow `new` in structure types.

**Generated:**
```haxe
typedef WidgetFactory = {
    function new(name:String);  // ERROR: illegal in Haxe 4.3
    function create(name:String):Widget;
};
```

**Expected:** Omit the `new` field in structures (simplest), or convert to `@:selfCall`.

### Root cause

Two code paths add construct signatures to structures:

1. **`complexTypeAnonFromTsType()`** at `src/ConverterContext.hx:1330-1338` — unconditionally adds construct signatures as `new` fields to anonymous types.

2. **`createInterfaceModule()`** at `src/ConverterContext.hx:688-699` — calls `generateTypeFields()` with construct signatures. When the interface becomes a typedef (`TDAlias(TAnonymous(fields))`), the `new` field is illegal.

The `generateTypeFields()` function at line 753-755 adds construct signatures without distinguishing classes from structures. For classes (line 507-516, `TDClass`) this is correct. For interfaces-as-typedefs (line 690-699), it is not.

### Fix plan

**Option A (simplest):** In `complexTypeAnonFromTsType()`, remove lines 1330-1338 entirely (skip construct signatures in anonymous types).

**Option B (also needed):** In `createInterfaceModule()` at line 688, pass an empty array `[]` for construct signatures instead of the actual construct signatures when the result will be a typedef.

---

## EC-3: Iterable/Iterator with wrong type parameter count

**Severity:** Compile error
**Affected:** 19 files (all TypedArray types + constructors)
**Test:** `test/e2e/modules/extern-compat.d.ts` — `DataProcessor`

TypeScript 5.6+ changed `Iterator<T>` to `Iterator<T, TReturn = any, TNext = any>` (3 params) and `Iterable<T>` similarly. Haxe's built-in types have 1 param. dts2hx passes all 3 through.

**Generated:**
```haxe
function processIterator<T>(iter:js.lib.Iterator_<T, Dynamic, Dynamic>):Array<T>;
function processIterable<T>(iter:Iterable<T, Dynamic, Dynamic>):Array<T>;
```

**Expected:**
```haxe
function processIterator<T>(iter:Iterator<T>):Array<T>;
function processIterable<T>(iter:Iterable<T>):Array<T>;
```

### Root cause

dts2hx has type parameter clamping logic that already works — but only when the type is found in either `specialTypeMap` or `stdLibMap` with matching param counts.

**`Iterable`** IS in `specialTypeMap` at `src/HaxeTypePathMap.hx:282` with `typeParams: 1`, so the clamping in `complexTypeFromInterfaceType()` at line 1583-1585 works correctly for it.

**`Iterator`** is NOT in `specialTypeMap`. It falls through to the `stdLibMap` lookup (line 300-322), where the param count check at line 307 compares `stdLibType.typeParameters.length (1) != tsTypeParamDeclarations.length (3)`, fails, and generates a replacement extern `Iterator_<T, TReturn, TNext>` with no `stdLibTypeParamCount` set. The clamping logic never fires.

The clamping code itself (lines 1583-1585 and 1526-1527) is correct and already handles this — the issue is purely that `Iterator` doesn't reach the clamping path.

### Fix plan

Add `Iterator` (and `AsyncIterator`) to `specialTypeMap` in `src/HaxeTypePathMap.hx:275-298`:

```haxe
'Iterator' => {name: 'Iterator', moduleName: 'Iterator', pack: [], typeParams: 1},
'AsyncIterator' => {name: 'AsyncIterator', moduleName: 'AsyncIterator', pack: [], typeParams: 1},
```

This is a one-line fix. The existing clamping logic handles the rest.

**Alternative:** Change the stdLibMap lookup (line 307) to allow param count mismatches when the Haxe type has fewer params than TS (still set `stdLibTypeParamCount` from the Haxe side and let clamping handle it).

---

## EC-4: Missing global browser types

**Severity:** Compile error
**Affected:** 14+ types (`XRInputSource`, `XRSession`, `XRFrame`, `GPUTexture`, etc.)

Types defined in TypeScript's `lib.dom.d.ts` that don't exist in Haxe's standard library are silently dropped. When three.js references them, the generated externs have unresolvable type references.

### Root cause

In `src/HaxeTypePathMap.hx` at line 268-320, when a symbol is marked `isBuiltIn` (declared in a TypeScript lib file):

1. It's checked against `specialTypeMap` (line 290) — not found
2. It's checked against `stdLibMap` (line 300) — not found (XR/GPU types aren't in Haxe's stdlib)
3. At line 317-320, the code logs a warning but does NOT fall through to generate an extern

The type path is still returned but no Haxe module is created, leaving a dangling reference.

### Fix plan

At line 317-320 in `HaxeTypePathMap.hx`, when a built-in type is not found in the Haxe stdlib:
- Set `isExistingStdLibType = false`
- Allow the code to fall through to the extern generation path at lines 430-435
- The type will be generated as a normal extern in the `global` package

This means types like `XRInputSource` would get auto-generated as `global.XRInputSource` externs with their actual fields, rather than being silently dropped.

---

## EC-5: String constraint expanded to structural type (bloated inlined types)

**Severity:** Compile error + massive code bloat
**Affected:** 39+ files (every three.js class with EventDispatcher)

When TypeScript has `T extends string` (or `T extends Extract<keyof EventMap, string>`), dts2hx expands the constraint into a structural type containing all ~50 methods of the `String` interface. This structural type is inlined at every usage site.

**Example:** `BloomMipmapsMaterial.hx` contains the full String interface inlined 3 times (once per event method), bloating a ~20 line file to 500+.

**Generated:**
```haxe
function addEventListener<T:({
    function toString():String;
    function charAt(pos:Float):String;
    // ... 50 more String methods ...
})>(type:T, listener:EventListener<Dynamic, T, Self>):Void;
```

**Expected:**
```haxe
function addEventListener<T:(String)>(type:T, listener:EventListener<Dynamic, T, Self>):Void;
```

### Root cause (detailed code path)

1. **Entry:** `typeParamDeclFromTsTypeParameter()` at line 1909-1920 processes the type parameter constraint. It calls `complexTypeFromTypeNode()` (line 1913-1914) on the constraint AST node.

2. **Node-to-type:** `complexTypeFromTypeNode()` at line 1628-1635 calls `tc.getTypeFromTypeNode(node)` which asks the TS compiler to resolve the constraint. For `Extract<keyof TEventMap, string>`, the TS compiler returns the String type — but as an **ObjectType with `ObjectFlags.Anonymous`**, not as the primitive `TypeFlags.String`.

3. **Dispatch:** `complexTypeFromTsType()` at line 1037-1038 checks for `TypeFlags.String` — doesn't match (it's an Object type). Falls through to line 1076 which dispatches to `complexTypeFromObjectType()`.

4. **Object dispatch:** `complexTypeFromObjectType()` at line 1278-1279 sees `ObjectFlags.Anonymous` and dispatches to `complexTypeAnonFromTsType()` — the anonymous type expansion path.

5. **Expansion:** `complexTypeAnonFromTsType()` at line 1305 calls `tc.getPropertiesOfType()` which returns all ~50 String methods. These are converted to fields and returned as `TAnonymous(fields)`.

The correct path (lines 1276-1277, `complexTypeFromInterfaceType`) would look up the type in `HaxeTypePathMap` and return `String`. But this path requires `ObjectFlags.ClassOrInterface`, which the constraint type doesn't have.

### Fix plan

Add a check in `complexTypeFromObjectType()` (around line 1278) before the Anonymous dispatch: if the anonymous ObjectType's symbol maps to a known built-in type (like String), emit the built-in reference instead of expanding.

Concretely, before line 1278:
```haxe
// Check if this anonymous type is actually a built-in that should be referenced by name
if (objectType.symbol != null && objectType.symbol.isBuiltIn()) {
    var hxTypePath = getReferencedHaxeTypePath(objectType.symbol, moduleSymbol, accessContext, false);
    if (hxTypePath.isExistingStdLibType) {
        return TPath(hxTypePath);
    }
}
```

This intercepts the String interface before it reaches the expansion path. The same fix would handle `Number`, `Boolean`, or any other primitive that TS resolves to an anonymous object type in constraint positions.

---

## EC-6: Light shadow type constraint failure

**Severity:** Compile error
**Affected:** Few files (DirectionalLight, SpotLight, etc.)

Three.js `Light<TShadowSupport>` has a constraint on the shadow type. The generated Haxe emits incompatible types.

```
DirectionalLight.hx:6: error: three.OrthographicCamera should be three.Camera
```

### Root cause

Related to EC-5 — the constraint resolution for `TShadowSupport extends Camera` likely follows the same structural expansion path. When the concrete shadow type (`DirectionalLightShadow`) has a specific camera type (`OrthographicCamera`), it fails the constraint check against the base `Camera` type.

### Fix plan

Likely resolved by EC-5 fix. If not, the constraint on `Light.shadow` may need to be relaxed to `Dynamic` or the concrete camera type needs to satisfy the base constraint.

---

## EC-7: Generic type parameters lost on `extends`

**Severity:** Type safety loss (not compile error)
**Affected:** `BloomMipmapsMaterial extends ShaderMaterial<U, D>`

When a class extends a generic base with specific type arguments, the parent's generic fields lose their specific types. `ShaderMaterial<U>.uniforms` becomes `DynamicAccess<IUniform<Dynamic>>` instead of the typed struct `U`.

### Root cause

dts2hx converts the parent class's fields using the parent's generic parameter, not the child's concrete type argument. The `uniforms` field type comes from `ShaderMaterial`'s definition where `U` is unresolved, rather than from the child's `extends ShaderMaterial<{source: Uniform<Texture>, ...}>`.

### Fix plan

Lower priority — workaround is `cast` or typed helper accessors. Full fix would require substituting the child's type arguments into the parent's field types during inheritance resolution.

---

## EC-8: Missing types from ungenerated optional dependencies

**Severity:** Compile error
**Affected:** `TextureVisualizer`, `StatsJs`, `GLTFLoader`

`PhysicallyBasedViewer` references dev/debug types from separate modules not included in extern generation.

### Root cause

`--skipDependencies` prevents these from being generated. Without it, they would be generated but bring in many transitive dependencies.

### Fix plan

Two options:
1. When a referenced type is from an ungenerated module and `--skipDependencies` is active, emit `Dynamic` instead of a dangling type reference.
2. Provide a way to list specific additional modules to generate alongside the primary module.

---

## EC-9: Stray type parameter `T` emitted as a concrete type

**Severity:** Compile error
**Affected:** 1 occurrence

A type parameter `T` appears as `Type not found : T`, suggesting dts2hx emitted an unresolved type variable as a concrete type reference.

### Root cause

Likely an edge case in `complexTypeFromTsType` where a `TypeParameter` type isn't recognized. When the type stack is deep or the type parameter comes from a different scope, the code may fail to match it and emit it as a concrete type name.

### Fix plan

Likely resolved by EC-5 fix. If not, add a check in the type parameter handling path to detect when a TypeParameter flag is present but not matched to any in-scope parameter.

---

## EC-10: Inlined structural types instead of named references

**Severity:** Code bloat (not compile error by itself, but compounds EC-5)
**Affected:** Pervasive across generated externs

When a TypeScript type resolves to a structural/anonymous type that has a named declaration (interface, type alias, class), dts2hx sometimes inlines the full structural expansion instead of emitting a reference to the named type.

This is the general form of EC-5's bloat — EC-5 is the worst case (String with 50 methods), but smaller types are also inlined unnecessarily throughout the generated code.

### Root cause

In `complexTypeFromTsType()`, when the type has no `aliasSymbol` and arrives as an anonymous ObjectType, the code goes directly to `complexTypeAnonFromTsType()` which expands all fields. It doesn't check whether the type's `symbol` has a named declaration that could be referenced instead.

### Fix plan

In `complexTypeFromObjectType()`, before dispatching to `complexTypeAnonFromTsType()` for anonymous types, check if the type's symbol has a named declaration (interface/class/type alias) in the type path map. If so, emit a reference to the named type instead of expanding inline.

This is a broader optimization that would improve code quality across all generated externs, not just the constraint case.

---

## Priority and dependency order

```
EC-5  ──→ likely fixes EC-6 and EC-9
  │
EC-3  (independent, one-line fix)
  │
EC-1  (independent, small fix)
  │
EC-4  (independent, moderate fix)
  │
EC-10 (builds on EC-5 approach, broader optimization)
  │
EC-8  (independent, moderate fix)
  │
EC-7  (complex, has workaround)
```

**Recommended fix order:**
1. **EC-3** — One-line: add `Iterator` to `specialTypeMap`
2. **EC-1** — Small: skip construct signatures in anonymous types
3. **EC-5** — Core fix: detect built-in types in anonymous constraint position
4. **EC-4** — Moderate: fall through to extern generation for unmapped built-ins
5. **EC-10** — Optimization: prefer named references over inline expansion
6. **EC-8** — Moderate: emit Dynamic for ungenerated dependencies
7. **EC-7** — Complex: generic type substitution in inheritance
