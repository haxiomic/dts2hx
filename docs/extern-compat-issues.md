# Extern Compatibility Issues

Bugs found when generating externs for three.js r182 + haxiomic-engine with dts2hx on Haxe 4.3.6.
These block real-world usage of dts2hx with modern TypeScript libraries.

## EC-1: `function new()` in structure types

**Severity:** Compile error
**Affected:** 10 files (all TypedArray constructors: `ArrayConstructor`, `Int8ArrayConstructor`, etc.)
**Test:** `test/e2e/modules/extern-compat.d.ts` — `WidgetFactory`

TypeScript interfaces with construct signatures (`new(args): T`) are converted to Haxe typedefs with `function new()`. Haxe 4.3+ does not allow `new` in structure types.

**Generated:**
```haxe
typedef WidgetFactory = {
    function new(name:String);  // ERROR: illegal in Haxe 4.3
    function create(name:String):Widget;
};
```

**Expected:** Either omit the `new` field in structures, or convert to a `@:selfCall` pattern.

**Fix location:** `src/ConverterContext.hx` — `complexTypeAnonFromTsType()` around line 1331, where construct signatures are added to structure fields.

---

## EC-3: Iterable/Iterator with wrong type parameter count

**Severity:** Compile error
**Affected:** 19 files (all TypedArray types + constructors)
**Test:** `test/e2e/modules/extern-compat.d.ts` — `DataProcessor`

TypeScript 5.6+ changed `Iterable<T>` to `Iterable<T, TReturn = any, TNext = any>` (3 params). Haxe's built-in `Iterable<T>` has 1 param. dts2hx passes all 3 through.

**Generated:**
```haxe
function processIterable<T>(iter:Iterable<T, Dynamic, Dynamic>):Array<T>;
//                                           ^^^^^^^^^^^^^^^^^ extra params
```

**Expected:**
```haxe
function processIterable<T>(iter:Iterable<T>):Array<T>;
```

**Fix location:** `src/HaxeTypePathMap.hx` around line 299-319, and `src/ConverterContext.hx` around line 1576-1578. When a built-in type is mapped to a Haxe stdlib type, clip type arguments to match the Haxe type's parameter count. The type map (`src/typemap/std-4.2.5.json`) may need updated entries with `typeParameters` for `Iterable` and `Iterator`.

---

## EC-4: Missing global browser types

**Severity:** Compile error
**Affected:** 14+ types (`XRInputSource`, `XRSession`, `XRFrame`, `GPUTexture`, etc.)
**Affected files:** WebXR and WebGPU references in three.js

Types defined in TypeScript's `lib.dom.d.ts` that don't exist in Haxe's standard library are silently dropped. When three.js references them, the generated externs have unresolvable type references.

**Expected:** dts2hx should generate extern stubs for built-in types that have no Haxe stdlib equivalent, rather than silently failing.

**Fix location:** `src/HaxeTypePathMap.hx` around line 317-320. When `stdLibType` is not found in the Haxe stdlib mapping, the type should fall through to extern generation instead of being silently skipped.

---

## EC-5: String constraint expanded to structural type (bloated inlined types)

**Severity:** Compile error + massive code bloat
**Affected:** 39+ files (every three.js class with EventDispatcher)

When TypeScript has `T extends string`, dts2hx resolves this to a structural type containing all ~50 methods of the `String` interface, instead of the simple constraint `T:(String)`. This structural type is then inlined at every usage site.

**Example:** `BloomMipmapsMaterial.hx` contains the full String interface inlined 3 times (once per event method: `addEventListener`, `hasEventListener`, `removeEventListener`), bloating the file from ~20 useful lines to 500+.

**Generated:**
```haxe
function addEventListener<T:({
    function toString():String;
    function charAt(pos:Float):String;
    function charCodeAt(index:Float):Float;
    // ... 50 more String methods inlined ...
    function sup():String;
})>(type:T, listener:EventListener<Dynamic, T, BloomMipmapsMaterial>):Void;
```

**Expected:**
```haxe
function addEventListener<T:(String)>(type:T, listener:EventListener<Dynamic, T, BloomMipmapsMaterial>):Void;
```

This also causes the constraint check failure (EC-5b): the structural type is not recognized as `String` by Haxe's type checker, so `EventListener<..., T, ...>` fails the `TEventType:(String)` constraint.

**Fix location:** `src/ConverterContext.hx` — the constraint resolution for `T extends string` (and other primitive types). When the constraint resolves to the structural type of a built-in like `String`, it should emit the built-in type reference instead.

**Root cause:** The TS compiler API resolves `Extract<keyof TEventMap, string>` to a type whose constraint is the structural expansion of `string`. dts2hx should recognize when a structural type matches a known built-in and emit the built-in reference.

---

## EC-6: Light shadow type constraint failure

**Severity:** Compile error
**Affected:** Few files (DirectionalLight, SpotLight, etc.)

Three.js `Light<TShadowSupport>` has a constraint on the shadow type parameter. The generated Haxe emits incompatible types for the shadow field.

**Example:**
```
DirectionalLight.hx:6: error: three.OrthographicCamera should be three.Camera
```

**Related to:** EC-5 (constraint resolution). May resolve if EC-5 is fixed.

---

## EC-7: Generic type parameters lost on `extends`

**Severity:** Type safety loss
**Affected:** `BloomMipmapsMaterial extends ShaderMaterial<U, D>`

When a class extends a generic base with specific type arguments (e.g., `BloomMipmapsMaterial extends ShaderMaterial<{source: Uniform<Texture>, ...}, ...>`), the type parameter `U` on the parent's `uniforms` field becomes `DynamicAccess<IUniform<Dynamic>>` instead of the typed struct.

**Impact:** Users lose typed access to uniforms — must use `DynamicAccess.get()` or casts.

**Priority:** Lower — can be worked around with `cast` or helper types.

---

## EC-8: Missing types from ungenerated optional dependencies

**Severity:** Compile error
**Affected:** `TextureVisualizer`, `StatsJs`, `GLTFLoader`

`PhysicallyBasedViewer` references dev/debug types that come from separate modules not included in the extern generation. These become unresolvable type references.

**Expected:** Either generate these dependencies automatically (remove `--skipDependencies`), or emit `Dynamic` stubs for types from ungenerated modules.

---

## EC-9: Stray type parameter `T` emitted as a concrete type

**Severity:** Compile error
**Affected:** 1 occurrence

A type parameter `T` appears as a missing type name, suggesting dts2hx emitted an unresolved type variable as a concrete type reference.

**Fix location:** Likely in `complexTypeFromTsType` — an edge case where a type parameter isn't recognized.

---

## Priority order

1. **EC-5** (constraint + bloat) — Highest impact. Fixes 39 files, eliminates massive bloat, and likely resolves EC-6 too.
2. **EC-1** (new in struct) — Easy fix, affects all TypedArray constructors.
3. **EC-3** (Iterable params) — Easy fix, affects all TypedArray types.
4. **EC-4** (missing globals) — Moderate fix, needed for WebXR/WebGPU usage.
5. **EC-8** (optional deps) — Moderate, workaround exists.
6. **EC-7** (generic extends) — Complex, has workaround.
7. **EC-9** (stray T) — Edge case, likely fixed by EC-5.
