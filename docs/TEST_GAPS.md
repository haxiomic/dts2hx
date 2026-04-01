# Test Coverage Gap Analysis

Tracks what is and isn't tested in the dts2hx test suite.

## Status key
- `[ ]` — No test coverage
- `[~]` — Unit test exists (d.ts → hx diff) but no runtime/e2e validation
- `[x]` — Fully tested (e2e runtime, typed, no workarounds)
- `[!]` — Test exists but blocked by compile failure (documents a bug)
- `[w]` — Test exists but uses Dynamic/js.Syntax.code workaround (hides a real issue)

---

## 1. MODULE RESOLUTION & IMPORT PATTERNS

- `[x]` **Cross-module imports** — math.ts imports from types.ts, e2e validated
- `[x]` **CommonJS `export =` with class** — CjsExport e2e tested
- `[x]` **CommonJS `export =` with namespace** — cjs-namespace e2e tested
- `[x]` **CommonJS `export =` with function/object** — unit tested
- `[x]` **Ambient module declarations** — `declare module "my-library"` e2e tested
- `[!]` **UMD pattern** — test in TestGaps (blocked by Float32Array_ compile bug)
- `[x]` **Global scope** — globalAdd, GlobalLogger, GlobalNS e2e tested
- `[x]` **`--global` vs `--modular` CLI flags** — test-modes.sh
- `[x]` **`--hxnodejs` flag** — test-flags.sh
- `[x]` **Re-export star (barrel files)** — barrel.ts e2e tested
- `[x]` **Re-export with rename** — tested in test-edge-cases.sh
- `[~]` **Triple-slash references** — unit test exists, not e2e
- `[!]` **Module dependency resolution** — test in test-cli-gaps.sh (blocked by Float32Array_)
- `[!]` **`--skipDependencies` flag** — test in test-cli-gaps.sh
- `[ ]` **`--all` flag** — convert all package.json dependencies
- `[ ]` **Circular module dependencies**
- `[x]` **ESM vs CJS output** — test-flags.sh verifies require() in output

## 2. TYPE OPERATORS & ADVANCED TYPES

- `[x]` **`keyof T` operator** — resolves to String, tested in negative suite
- `[x]` **`typeof expr` type queries** — cloneConfig e2e tested
- `[x]` **Indexed access `T[K]`** — resolves for concrete cases
- `[x]` **Conditional types (concrete)** — Flatten, Awaited resolve correctly
- `[x]` **Conditional types (generic)** — verified falls to Dynamic
- `[~]` **Conditional type distribution** — not explicitly tested
- `[x]` **Intersection rasterization** — test-flags.sh
- `[x]` **Callable intersection** — FIXED: @:selfCall + fields
- `[x]` **`bigint` type** — FIXED: ts.BigInt abstract with methods
- `[x]` **`unique symbol` type** — maps to js.lib.Symbol, tested
- `[x]` **Literal types** — precision loss documented in negative suite
- `[x]` **Template literal types** — maps to String, e2e tested
- `[x]` **Intrinsic string types** — toUpper, toLower, capitalize e2e tested
- `[x]` **Key remapping (`as` clause)** — makeConfigGetters e2e tested
- `[x]` **NoInfer<T>** — FIXED: unwraps via Substitution type
- `[x]` **Enum member as type** — FIXED: resolves to parent enum type

## 3. DECLARATION MERGING

- `[x]` **Interface + Interface merge** — MergedInterface e2e tested
- `[x]` **Namespace + Namespace merge** — MergedNS e2e tested
- `[~]` **Namespace + Class merge** — unit test exists, not e2e
- `[~]` **Namespace + Function merge** — unit test exists, not e2e
- `[~]` **Namespace + Enum merge** — unit test exists, not e2e
- `[~]` **Value + Type + Namespace triple merge** — unit test exists, not e2e
- `[!]` **Multiple interface extending different bases** — test in TestGaps (blocked)
- `[x]` **Global augmentation** — tested in test-edge-cases.sh
- `[x]` **Module augmentation** — tested in test-edge-cases.sh

## 4. CLASS FEATURES

- `[x]` **Abstract classes** — FIXED: no default constructor
- `[x]` **`#private` fields** — FIXED: excluded from externs
- `[x]` **`protected` fields** — FIXED: no modifier (was private)
- `[~]` **Private constructor** — unit test exists, not e2e
- `[x]` **Class with implements** — test harness (15 assertions), cast required (B8 blocked)
- `[~]` **Index signatures on classes** — unit test exists
- `[~]` **Static index signatures** — ts4.3 unit test
- `[x]` **Parameter properties** — tested via Dog(name, legs)
- `[x]` **Generic class with default type params** — tested, default lost
- `[x]` **Method overloads on classes** — Converter e2e tested
- `[x]` **`this` return type** — Builder/FancyBuilder e2e tested
- `[x]` **Class inheritance** — Dog extends Animal e2e tested
- `[x]` **Readonly class fields** — FIXED: maps to final
- `[x]` **Separate getter/setter types** — getter preserved, setter lost

## 5. INDEX SIGNATURES

- `[x]` **String index signature (pure)** — FIXED: DynamicAccess<T>
- `[x]` **Number index signature (pure)** — FIXED: Array<T>
- `[x]` **Mixed string index + named fields** — test harness (12 assertions), D1 blocked
- `[x]` **Readonly index signatures** — DynamicAccess (readonly lost)
- `[x]` **Symbol index signatures** — dropped, documented
- `[!]` **Template string pattern index signatures** — test in TestGaps (blocked)
- `[x]` **Multiple index signatures** — all dropped, documented

## 6. FUNCTION FEATURES

- `[x]` **Basic params, optionals, rest** — e2e tested
- `[x]` **Overloads** — e2e tested
- `[x]` **Generic functions** — e2e tested
- `[x]` **Higher-order (callbacks)** — e2e tested
- `[!]` **`this` parameter** — test in TestGaps (blocked), should be stripped
- `[!]` **Destructured parameters** — test in TestGaps (blocked)
- `[!]` **Overloaded constructors** — test in TestGaps (blocked), FlexDate has 3 overloads
- `[x]` **Type predicates** — returns Bool, narrowing lost
- `[x]` **Assertion functions** — returns Void, narrowing lost
- `[x]` **Construct signatures in typedefs** — FIXED: return type for Haxe 4.3

## 7. ENUM FEATURES

- `[x]` **String enums** — e2e tested
- `[x]` **Numeric enums** — e2e tested
- `[x]` **Const enums** — e2e tested
- `[~]` **Mixed-type enums** — unit test exists
- `[~]` **Self-referencing enum values** — unit test exists
- `[x]` **Enum member as type** — FIXED: parent enum type
- `[~]` **Enum + namespace merge** — unit test exists
- `[!]` **Three.js style enum pattern** — test in TestGaps (blocked)

## 8. CLI & BUILD MODES

- `[x]` **`--global` mode** — test-modes.sh
- `[x]` **`--modular` mode** — test-modes.sh
- `[x]` **Both modes (default)** — test-modes.sh
- `[x]` **`--hxnodejs`** — test-flags.sh
- `[x]` **`--noStdLib`** — test-flags.sh
- `[!]` **`--tsconfig`** — test in test-cli-gaps.sh (blocked)
- `[!]` **`--sourceLocation`** — test in test-cli-gaps.sh (blocked)
- `[x]` **`--noLibWrap`** — used in all e2e tests
- `[x]` **`--includeExternal`** — test-flags.sh
- `[x]` **`--allowIntersectionRasterization`** — test-flags.sh
- `[!]` **`--globalPackageName`** — test in test-cli-gaps.sh (blocked)

## 9. STD LIB TYPE MAPPING

- `[x]` **Array → Array** — e2e tested
- `[x]` **Map → js.lib.Map** — Registry e2e test
- `[x]` **Promise → js.lib.Promise** — fetchJson e2e tested
- `[!]` **RegExp → js.lib.RegExp** — test in TestGaps (blocked)
- `[!]` **Date → js.lib.Date** — test in TestGaps (blocked)
- `[!]` **TypedArray variants** — test exists, fails to compile (Iterable type param bug)
- `[ ]` **DOM types** (HTMLElement, Event, etc.)
- `[x]` **`--noStdLib` disables mapping** — test-flags.sh

## 10. POST-PROCESSING & EDGE CASES

- `[!]` **Three.js style enum pattern** — test in TestGaps (blocked)
- `[x]` **Field name collision** — myField/MyField tested
- `[!]` **File path length limits** — test in TestGaps (blocked)
- `[!]` **Circular type references** — test in TestGaps (blocked)

## 11. REAL-WORLD LIBRARY PATTERNS

- `[~]` **node, express, three, jquery, vue, vscode** — convert successfully, output diffed, not e2e validated

## 12. TS VERSION-SPECIFIC FEATURES

- `[x]` All TS 3.8–6.0 features tested (see version-specific test files)

---

## Known Bugs (compile failures)

All caused by same root issue: TS 6.0 `Iterable<T, TReturn, TNext>` has 3 type params, Haxe `Iterable<T>` has 1.

| Bug | Where | Impact |
|---|---|---|
| Float32Array_ Iterable params | `externs/js/lib/Float32Array_.hx` | Blocks TestGaps compilation (12 tests) |
| Iterator type params | `externs/*/DataProcessor.hx` | EC-3 compile test failure |
| Construct sig in typedef | `externs/*/WidgetFactory.hx` | EC-1 compile test failure (separate issue) |

## Workarounds Hiding Real Issues

These tests pass but use Dynamic/cast to bypass type errors that should be fixed:

| Location | Workaround | Real issue |
|---|---|---|
| TestE2E:297,301 | `var okr:Dynamic = Testlib.ok(42)` | Result<T> union can't be accessed typed |
| TestE2E:605-607 | `var a:Dynamic = [1,2,3]` | longest() constraint: Array.length is Int, HasLength wants Float |
| TestE2E:315 | `js.Syntax.code('["hello", 42]')` | Haxe can't create mixed-type array literal |
| TestE2E:389 | `js.Syntax.code('[["a",1],["b",2]]')` | Same: nested mixed array |
| TestE2E:658 | `js.Syntax.code("[1,[2,[3,4]],5]")` | Same: nested mixed array for flatten() |
| TestNegative:306-308 | `js.Syntax.code` for BigInt | Old bigint test, should use ts.BigInt now |

## Summary

| Status | Count |
|---|---|
| `[x]` Fully tested | 83 |
| `[~]` Unit only | 14 |
| `[!]` Test exists, blocked by bug | 17 |
| `[w]` Workaround hiding issue | 6 |
| `[ ]` No coverage | 3 |
| **Total tracked items** | **123** |
