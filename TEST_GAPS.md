# Test Coverage Gap Analysis

Comprehensive catalogue of untested features and code paths in dts2hx.
Organized by priority for real-world usage.

## Status key
- `[ ]` — No test coverage
- `[~]` — Unit test exists (d.ts → hx diff) but no runtime/e2e validation
- `[x]` — Fully tested (e2e or verified unit test output)

---

## 1. MODULE RESOLUTION & IMPORT PATTERNS

These are critical — they determine whether generated externs can actually be used.

- `[ ]` **ESM module imports** (`import { X } from "module"`) — @:jsRequire interop with ES modules; expected to fail with current hxnodejs, which is itself a useful thing to validate
- `[ ]` **CommonJS `export =` with class** — `export = MyClass` pattern (CJS default export)
- `[ ]` **CommonJS `export =` with namespace** — `export = ns` pattern
- `[~]` **CommonJS `export =` with object/function** — `export-function.d.ts` and `export-object.d.ts` exist but not e2e validated
- `[ ]` **Ambient module declarations** (`declare module "name" { }`) — separate from file-scoped exports
- `[ ]` **UMD pattern** (both global and module access to same library)
- `[~]` **Global scope** (`declare function/var/class`) — `ambient.d.ts` unit test exists, not e2e validated
- `[ ]` **`--global` CLI flag** vs `--modular` — different output for same input
- `[ ]` **`--hxnodejs` flag** — maps Node.js types to hxnodejs equivalents
- `[ ]` **Re-export star** (`export * from "./other"`) — barrel file patterns
- `[ ]` **Re-export with rename** (`export { X as Y } from "./other"`)
- `[~]` **Triple-slash references** (`/// <reference types="..." />`) — unit test exists, not e2e
- `[ ]` **Module dependency resolution** — when module A depends on module B, both get converted
- `[ ]` **`--skipDependencies` flag**
- `[ ]` **`--all` flag** — convert all package.json dependencies
- `[ ]` **Circular module dependencies**

## 2. TYPE OPERATORS & ADVANCED TYPES

These are the type-level features that appear in real-world .d.ts files.

- `[ ]` **`keyof T` operator** — converter has commented-out code (`TypeFlags.Index`)
- `[ ]` **`typeof expr` type queries** — `typeof someVar` in type position
- `[ ]` **Indexed access types** (`T[K]`, `Foo["bar"]`) — commented out in converter
- `[ ]` **Conditional types with `infer`** — converter falls to Dynamic for generic cases; should test concrete resolution
- `[ ]` **Conditional type distribution** — `T extends U ? X : Y` distributes over unions when T is a union
- `[~]` **`keyof` in mapped types** — tested implicitly through Record/Pick/Omit, not standalone
- `[ ]` **`in` operator narrowing** in type positions
- `[ ]` **Intersection rasterization** (`--allowIntersectionRasterization` flag)
- `[~]` **`bigint` type** — converter has code path, no test
- `[ ]` **`unique symbol` type** — converter maps to `js.lib.Symbol`, not e2e tested
- `[~]` **String/number/boolean literal types** — unit test exists (types.d.ts), not e2e

## 3. DECLARATION MERGING

TypeScript's most complex feature — multiple declarations with the same name merge.

- `[~]` **Interface + Interface merge** — `symbols.d.ts` has examples, conversion not e2e validated
- `[~]` **Namespace + Class merge** (`ClassValueModule`) — unit test exists, not e2e
- `[~]` **Namespace + Function merge** (`FunctionValueModule`) — unit test exists, not e2e
- `[~]` **Namespace + Enum merge** (`EnumValueModule`) — unit test exists, not e2e
- `[~]` **Value + Type + Namespace triple merge** (`ValueTypedefNamespace`) — unit test exists, not e2e
- `[ ]` **Multiple interface declarations extending different bases** — not tested
- `[ ]` **Global augmentation** (`declare global { }` inside a module)
- `[ ]` **Module augmentation** (`declare module "existing" { }` to extend)

## 4. CLASS FEATURES

- `[~]` **Abstract classes** — ts4.2 test defines one, but `abstract` modifier handling not validated
- `[ ]` **`#private` fields** (ECMAScript private) — TS 3.8 feature, no test
- `[ ]` **`protected` fields** — converter maps to no access modifier, not tested
- `[~]` **Private constructor** — `class.d.ts` has it, not e2e validated
- `[ ]` **Class with implements** (multiple interfaces) — not tested
- `[~]` **Index signatures on classes** — `class.d.ts` has it, conversion output not validated
- `[ ]` **Static index signatures** — TS 4.3 test defines it, not runtime validated
- `[ ]` **Parameter properties** (`constructor(public x: number)`) — TS emits as fields in .d.ts
- `[ ]` **Generic class with default type params** — not tested
- `[ ]` **Method overloads on classes** — not tested separately from interface overloads
- `[~]` **`this` return type** — e2e tests Builder, but not subclass `this` polymorphism

## 5. INDEX SIGNATURES

These are very common in real-world types but poorly supported.

- `[ ]` **String index signature** (`{ [key: string]: T }` → `DynamicAccess<T>`) — converter handles it, not e2e tested
- `[ ]` **Number index signature** (`{ [index: number]: T }` → `ArrayAccess<T>`)
- `[ ]` **Mixed index + named fields** — converter drops index sig, keeps named fields
- `[ ]` **Readonly index signatures**
- `[ ]` **Symbol index signatures** (TS 4.4) — currently dropped
- `[ ]` **Template string pattern index signatures** (TS 4.4) — e.g. `{ [key: \`data-${string}\`]: string }`

## 6. FUNCTION FEATURES

- `[x]` **Basic params, optionals, rest** — e2e tested
- `[x]` **Overloads** — e2e tested
- `[x]` **Generic functions** — e2e tested
- `[x]` **Higher-order (callbacks)** — e2e tested
- `[ ]` **`this` parameter** (`function f(this: Foo, x: number)`) — TS convention, should be stripped
- `[ ]` **Destructured parameters** (`function f({ x, y }: Point)`) — named binding patterns
- `[ ]` **Overloaded constructors** — not tested
- `[~]` **Type predicates** (`x is T`) — unit test returns Bool, not e2e
- `[ ]` **Assertion functions** (`asserts x is T`) — TS 3.7 feature

## 7. ENUM FEATURES

- `[x]` **String enums** — e2e tested
- `[~]` **Numeric enums** — testlib has NumericEnum, not exercised in e2e
- `[~]` **Const enums** — testlib has ConstEnum, not exercised in e2e
- `[~]` **Mixed-type enums** — unit test exists, not e2e
- `[~]` **Self-referencing enum values** — unit test exists, not e2e
- `[ ]` **Enum used as a type** (enum value as type constraint)
- `[~]` **Enum + namespace merge** — unit test exists, not e2e

## 8. CLI & BUILD MODES

None of these are tested programmatically.

- `[ ]` **`--global` mode** — output uses `@:native()` instead of `@:jsRequire()`
- `[ ]` **`--modular` mode** — output uses `@:jsRequire()` only
- `[ ]` **Both `--global` and `--modular`** (default) — dual output
- `[ ]` **`--hxnodejs`** — maps node types to hxnodejs library types
- `[ ]` **`--noStdLib`** — generates externs for built-in types instead of mapping to std
- `[ ]` **`--tsconfig`** — custom compiler options
- `[ ]` **`--sourceLocation`** — adds location comments
- `[ ]` **`--noLibWrap` vs library wrapping** — haxelib-style output with haxelib.json
- `[ ]` **`--includeExternal`** — include external types in output
- `[ ]` **`--allowIntersectionRasterization`** — intersection to anon conversion
- `[ ]` **`--globalPackageName`** — custom name for global package

## 9. STD LIB TYPE MAPPING

The converter maps TS built-in types to Haxe std lib equivalents.

- `[ ]` **Array → Array** mapping correctness
- `[ ]` **Map/Set → js.lib.Map/Set** mapping
- `[ ]` **Promise → js.lib.Promise** mapping
- `[ ]` **RegExp → js.lib.RegExp** mapping (or EReg)
- `[ ]` **Date → js.lib.Date** mapping
- `[ ]` **Error → js.lib.Error** mapping
- `[ ]` **TypedArray variants** (Uint8Array, Float32Array, etc.)
- `[ ]` **DOM types** (HTMLElement, Event, etc.) — when processing libs that use DOM
- `[ ]` **Custom type map** (`--noStdLib` disables all mapping)

## 10. POST-PROCESSING

- `[ ]` **Three.js style enum pattern** — empty enum + const fields → enum with values
- `[ ]` **Field name collision resolution** — two fields mapping to same Haxe name
- `[ ]` **File path length limits** — very long type names

## 11. REAL-WORLD LIBRARY PATTERNS

The lib tests (RunLibs) convert real libraries but don't validate correctness.

- `[ ]` **node** — event emitters, streams, Buffer, process
- `[ ]` **express** — middleware chains, request/response types
- `[ ]` **three** — deep class hierarchies, enum patterns
- `[ ]` **jquery** — overloaded `$()`, fluent API
- `[ ]` **vue** — component options, reactive types
- `[ ]` **vscode** — extension API, disposables

---

## Priority Ranking

### P0 — Must have for real-world usage
1. ESM module import patterns (#1.1)
2. `--global` vs `--modular` mode (#8.1, #8.2)
3. Ambient module declarations (#1.5)
4. Declaration merging validation (#3)
5. Index signatures (#5.1, #5.2, #5.3)
6. `export =` patterns (#1.2, #1.3)

### P1 — Important for correctness
7. String/number index → DynamicAccess/ArrayAccess e2e
8. `keyof`/`typeof`/indexed access types (#2.1-#2.3)
9. CLI flag combinations (#8)
10. `--hxnodejs` mapping validation (#8.4)
11. Module dependency resolution (#1.13)
12. Class features: implements, abstract, private (#4)
13. Enum + namespace merge e2e (#3.5)
14. Overloaded constructors (#6.7)

### P2 — Nice to have
15. Conditional type distribution (#2.5)
16. BigInt, unique symbol (#2.10, #2.11)
17. Std lib type mapping validation (#9)
18. Post-processing patterns (#10)
19. `this` parameter stripping (#6.6)
20. Global augmentation (#3.7)
21. Real-world library e2e validation (#11)
