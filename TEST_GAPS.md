# Test Coverage Gap Analysis

Tracks what is and isn't tested in the dts2hx test suite.
Updated to reflect current state after TS 3.7→6.0 upgrade work.

## Status key
- `[ ]` — No test coverage
- `[~]` — Unit test exists (d.ts → hx diff) but no runtime/e2e validation
- `[x]` — Fully tested (e2e runtime + compile-time verification)
- `[!]` — Known bug, test documents the failure

---

## 1. MODULE RESOLUTION & IMPORT PATTERNS

- `[x]` **Cross-module imports** — math.ts imports from types.ts, e2e validated
- `[x]` **CommonJS `export =` with class** — CjsExport e2e tested (constructor, methods, statics)
- `[x]` **CommonJS `export =` with namespace** — cjs-namespace e2e tested (greet, version)
- `[x]` **CommonJS `export =` with function/object** — export-function.d.ts, export-object.d.ts unit tested
- `[x]` **Ambient module declarations** — `declare module "my-library"` e2e tested with runtime
- `[ ]` **UMD pattern** (both global and module access to same library)
- `[x]` **Global scope** — globalAdd, globalVersion, GlobalLogger, GlobalNS e2e tested
- `[x]` **`--global` vs `--modular` CLI flags** — test-modes.sh validates @:native vs @:jsRequire filtering
- `[x]` **`--hxnodejs` flag** — test-flags.sh validates (when @types/node available)
- `[x]` **Re-export star (barrel files)** — barrel.ts e2e tested
- `[x]` **Re-export with rename** — `export { X as Y }` tested in test-edge-cases.sh (aliased name not separately generated — documented limitation)
- `[~]` **Triple-slash references** — unit test exists, not e2e
- `[ ]` **Module dependency resolution** — when module A depends on module B, both get converted
- `[ ]` **`--skipDependencies` flag** — used in tests but not validated
- `[ ]` **`--all` flag** — convert all package.json dependencies
- `[ ]` **Circular module dependencies**
- `[x]` **ESM vs CJS output** — test-flags.sh verifies require() in output, not import

## 2. TYPE OPERATORS & ADVANCED TYPES

- `[x]` **`keyof T` operator** — tested in negative suite, resolves to String for concrete types
- `[x]` **`typeof expr` type queries** — cloneConfig e2e tested
- `[x]` **Indexed access `T[K]`** — Config['host']→String correctly resolved for concrete cases
- `[x]` **Conditional types (concrete)** — Flatten, Awaited resolve correctly for concrete instantiations
- `[x]` **Conditional types (generic)** — verified falls to Dynamic (Haxe limitation)
- `[~]` **Conditional type distribution** — not explicitly tested
- `[x]` **Intersection rasterization** — test-flags.sh validates --allowIntersectionRasterization
- `[x]` **Callable intersection** — FIXED: now produces @:selfCall + fields instead of Dynamic
- `[x]` **`bigint` type** — FIXED: ts.BigInt abstract with toString/valueOf methods
- `[x]` **`unique symbol` type** — tested in negative suite, maps to js.lib.Symbol (uniqueness lost)
- `[x]` **Literal types (string/number/boolean)** — tested in negative suite, precision loss documented
- `[x]` **Template literal types** — maps to String, e2e tested (makeEventName, isEventName)
- `[x]` **Intrinsic string types** — toUpper, toLower, capitalize e2e tested
- `[x]` **Key remapping (`as` clause)** — makeConfigGetters e2e tested (getHost/getPort/getDebug)
- `[x]` **NoInfer<T>** — FIXED: unwraps via Substitution type, createPalette e2e tested
- `[x]` **Enum member as type** — FIXED: resolves to parent enum type instead of String

## 3. DECLARATION MERGING

- `[x]` **Interface + Interface merge** — MergedInterface e2e tested (fieldA + fieldB both present)
- `[x]` **Namespace + Namespace merge** — MergedNS e2e tested (fnA + fnB + shared)
- `[~]` **Namespace + Class merge** — unit test exists, not e2e
- `[~]` **Namespace + Function merge** — unit test exists, not e2e
- `[~]` **Namespace + Enum merge** — unit test exists, not e2e
- `[~]` **Value + Type + Namespace triple merge** — unit test exists, not e2e
- `[ ]` **Multiple interface declarations extending different bases**
- `[x]` **Global augmentation** — declare global tested in test-edge-cases.sh
- `[x]` **Module augmentation** — tested in test-edge-cases.sh

## 4. CLASS FEATURES

- `[x]` **Abstract classes** — FIXED: no default constructor generated, e2e tested
- `[x]` **`#private` fields** — FIXED: excluded from externs, e2e tested
- `[x]` **`protected` fields** — FIXED: maps to no modifier (was private), e2e tested
- `[~]` **Private constructor** — unit test exists, not e2e
- `[x]` **Class with implements** — test harness exists (15 assertions), cast required for typed params (B8 blocked)
- `[~]` **Index signatures on classes** — unit test exists, conversion not validated
- `[~]` **Static index signatures** — ts4.3 unit test, not runtime validated
- `[x]` **Parameter properties** — TS emits as fields, tested via Dog(name, legs) etc.
- `[x]` **Generic class with default type params** — tested in negative suite, default lost
- `[x]` **Method overloads on classes** — Converter e2e tested
- `[x]` **`this` return type** — Builder/FancyBuilder e2e tested, polymorphism documented
- `[x]` **Class inheritance** — Dog extends Animal, DisposableComponent extends BaseComponent, e2e tested
- `[x]` **Readonly class fields** — FIXED: maps to `final`, compile-time test rejects writes
- `[x]` **Separate getter/setter types** — tested in negative suite, getter type preserved, setter union lost

## 5. INDEX SIGNATURES

- `[x]` **String index signature (pure)** — FIXED: maps to DynamicAccess<T>, e2e tested
- `[x]` **Number index signature (pure)** — FIXED: maps to Array<T>, e2e tested
- `[x]` **Mixed string index + named fields** — test harness exists (12 assertions), index dropped (D1 blocked)
- `[x]` **Readonly index signatures** — tested in negative suite, maps to mutable DynamicAccess
- `[x]` **Symbol index signatures** — tested in negative suite, dropped entirely
- `[ ]` **Template string pattern index signatures** — not tested
- `[x]` **Multiple index signatures** — tested in negative suite, all dropped

## 6. FUNCTION FEATURES

- `[x]` **Basic params, optionals, rest** — e2e tested
- `[x]` **Overloads** — e2e tested
- `[x]` **Generic functions** — e2e tested
- `[x]` **Higher-order (callbacks)** — e2e tested
- `[ ]` **`this` parameter** (`function f(this: Foo, x: number)`) — should be stripped
- `[ ]` **Destructured parameters** (`function f({ x, y }: Point)`) — binding patterns
- `[ ]` **Overloaded constructors**
- `[x]` **Type predicates** — tested in negative suite, returns Bool, narrowing lost
- `[x]` **Assertion functions** — tested in negative suite, returns Void, narrowing lost
- `[x]` **Construct signatures in typedefs** — FIXED: generates function new():T with return type

## 7. ENUM FEATURES

- `[x]` **String enums** — e2e tested (Direction.Up/Down/Left/Right)
- `[x]` **Numeric enums** — e2e tested (NumericEnum.A=0, B=1, C=2)
- `[x]` **Const enums** — e2e tested (ConstEnum.X=10, Y=20, Z=30)
- `[~]` **Mixed-type enums** — unit test exists, not e2e
- `[~]` **Self-referencing enum values** — unit test exists, not e2e
- `[x]` **Enum member as type** — FIXED: resolves to parent enum type
- `[~]` **Enum + namespace merge** — unit test exists, not e2e

## 8. CLI & BUILD MODES

- `[x]` **`--global` mode** — test-modes.sh validates @:native output
- `[x]` **`--modular` mode** — test-modes.sh validates @:jsRequire output
- `[x]` **Both modes (default)** — test-modes.sh validates dual output
- `[x]` **`--hxnodejs`** — test-flags.sh (when @types/node available)
- `[x]` **`--noStdLib`** — test-flags.sh validates
- `[ ]` **`--tsconfig`** — not tested
- `[ ]` **`--sourceLocation`** — not tested
- `[x]` **`--noLibWrap`** — used in all e2e tests
- `[x]` **`--includeExternal`** — test-flags.sh validates
- `[x]` **`--allowIntersectionRasterization`** — test-flags.sh validates
- `[ ]` **`--globalPackageName`** — not tested

## 9. STD LIB TYPE MAPPING

- `[x]` **Array → Array** — validated via e2e (mapArray, firstAndRest, etc.)
- `[x]` **Map → js.lib.Map** — validated via Registry e2e test
- `[x]` **Promise → js.lib.Promise** — fetchJson, chainPromises e2e tested
- `[ ]` **RegExp → js.lib.RegExp** mapping
- `[ ]` **Date → js.lib.Date** mapping
- `[x]` **Error → js.lib.Error** — AppError extends Error e2e tested
- `[ ]` **TypedArray variants** (Uint8Array, Float32Array, etc.)
- `[ ]` **DOM types** (HTMLElement, Event, etc.)
- `[x]` **`--noStdLib` disables mapping** — test-flags.sh

## 10. POST-PROCESSING

- `[ ]` **Three.js style enum pattern** — empty enum + const fields → enum with values
- `[x]` **Field name collision** — myField/MyField tested in negative suite
- `[ ]` **File path length limits** — very long type names

## 11. REAL-WORLD LIBRARY PATTERNS

Lib tests (RunLibs) convert real libraries and verify no crashes. Output correctness is not e2e validated.

- `[~]` **node** — converts successfully, output diffed
- `[~]` **express** — converts successfully, output diffed
- `[~]` **three** — converts successfully, output diffed
- `[~]` **jquery** — converts successfully, output diffed
- `[~]` **vue** — converts successfully, output diffed
- `[~]` **vscode** — converts successfully, output diffed

## 12. TS VERSION-SPECIFIC FEATURES

- `[x]` **TS 3.8** — import type / export type (transparent)
- `[x]` **TS 4.0** — variadic tuples, labeled tuples, rest elements
- `[x]` **TS 4.1** — template literal types, key remapping, recursive conditionals, intrinsic string types
- `[x]` **TS 4.2** — leading/middle rest in tuples
- `[x]` **TS 4.3** — separate getter/setter types (getter preserved), override
- `[x]` **TS 4.7** — variance annotations (silently ignored), infer extends
- `[x]` **TS 4.9** — auto-accessor → regular properties
- `[x]` **TS 5.0** — const type param (dropped), decorators
- `[x]` **TS 5.4** — NoInfer<T> (unwrapped to T)
- `[x]` **TS 6.0** — hasNoDefaultLib fix for isBuiltIn

---

## Bugs Found & Fixed

| Bug | Before | After |
|---|---|---|
| Index signatures on interfaces | `{ }` empty | `DynamicAccess<T>` / `Array<T>` |
| bigint type | `{ }` empty struct | `ts.BigInt` abstract with methods |
| Construct sig in typedef | Missing return type | `:T` return type for Haxe 4.3 |
| #private fields | Mangled `@:native("#private")` | Excluded entirely |
| protected modifier | `private` (too restrictive) | No modifier |
| abstract class | Had `function new()` | No constructor |
| Callable intersection | `Dynamic` | `@:selfCall` function + fields |
| Enum member type | `String` | Parent enum type |
| getExpandedParameters (TS 4.0) | Crashed (Symbol[][] not unwrapped) | Unwrap first element |
| Mapped type properties (TS 3.9) | `Dynamic` | Proper type via fallback chain |
| Template literal types (TS 4.1) | `Dynamic` | `String` |
| NoInfer<T> (TS 5.4) | `Dynamic` | Unwrapped to `T` |
| isBuiltIn (TS 6.0) | Broken (hasNoDefaultLib false) | File path fallback |

## Blocked Issues

| Issue | Why blocked |
|---|---|
| B8: `implements` clause | dts2hx generates TS interfaces as Haxe typedefs; `implements` needs Haxe interfaces. Requires dual type generation. Test harness ready (15 assertions). |
| D1: Mixed index + named fields | `DynamicAccess` is typedef to Dynamic, can't TExtend it. Needs custom abstract type. Test harness ready (12 assertions). |

## Remaining Gaps (by priority)

### Still needed
- UMD patterns
- Module dependency resolution
- `--skipDependencies` / `--all` validation
- Circular module dependencies
- `this` parameter stripping
- Destructured parameters
- Overloaded constructors
- `--tsconfig`, `--sourceLocation`, `--globalPackageName`
- RegExp/Date/TypedArray/DOM std lib mapping validation
- Three.js enum pattern post-processing
- File path length limits
- Template string pattern index signatures
- Real-world library e2e validation (node, express, three, etc.)
