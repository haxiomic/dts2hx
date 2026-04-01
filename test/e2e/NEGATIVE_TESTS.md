# Negative & Limitation Test Plan

Each test must have **real assertions** — no `assert(true)` placeholders.
For each case: write TS source with the feature, generate externs, then verify
the actual (possibly degraded) Haxe output matches expected behavior.

## Status: `[ ]` todo, `[x]` done, `[!]` found bug/issue

---

## A. Type precision losses

- [x] **A1. String literal types** — `'hello'` → `String`, any string accepted (precision lost)
- [x] **A2. Number literal types** — `42` → `Int`, any int accepted
- [x] **A3. Boolean literal types** — `true` → `Bool`
- [x] **A4. Template literal pattern** — `` `data-${string}` `` → `String`, non-matching strings accepted
- [x] **A5. keyof T** — `keyof Config` → `String` (not union of keys)
- [x] **A6. Indexed access T[K]** — `Config['host']` → `String` (correctly resolved for concrete!)
- [x] **A7. Type predicates** — `x is Dog` → `Bool`, narrowing lost, manual cast required
- [x] **A8. Assertion functions** — `asserts x is T` → `Void`, narrowing lost
- [x] **A9. unique symbol** — both `sym1`, `sym2` → `js.lib.Symbol` (uniqueness lost)
- [x] **A10. Enum member as type** — `Status.Active` → `String` (not narrowed)
- [x] **A11. this-type polymorphism** — `Builder.add()` → `Builder` (FancyBuilder overrides correctly)
- [x] **A12. Callable intersection** — `((x)=>y) & {field}` → `Dynamic` (both sides lost)

## B. Declaration/modifier losses

- [x] **B1. #private fields** — `#secret` → `@:native("#private") var HashPrivate` (mangled, wrong)
- [x] **B2. protected modifier** — `protected` → `private` (accessibility widened in wrong direction)
- [x] **B3. abstract class** — `abstract class` → instantiable (abstract lost, throws at runtime)
- [x] **B4. override keyword** — `override` dropped, method inherited not re-emitted
- [x] **B5. readonly on class fields** — `readonly` → `final` (correctly enforced!)
- [x] **B6. Generic default type params** — `Box<T = string>` → `Box<T>` (default lost)
- [x] **B7. const type parameter** — `const` dropped, function still works correctly
- [x] **B8. implements multiple interfaces** — `implements A, B` → no `implements` clause in extern

## C. Module/import patterns

- [x] **C1. ESM vs CJS** — verified test_output.js uses require() not import (test-flags.sh)
- [ ] **C2. Re-export with rename** — `export { X as Y }` → verify Y exists and works
- [ ] **C3. Module augmentation** — `declare module "express" { interface Request { custom: string } }` → verify augmented field appears
- [ ] **C4. Global augmentation** — `declare global { function myGlobal(): void }` inside a module → verify global is accessible
- [ ] **C5. Side-effect import** — `import "polyfill"` → verify it doesn't crash, document it's not representable

## D. Index signature gaps

- [x] **D1. String index + named fields** — index dropped, named kept, Dynamic for index access
- [x] **D2. Number index + named fields** — index dropped, length kept (ts-features)
- [x] **D3. Multiple index sigs** — both indexes dropped, only named field `length` remains
- [x] **D4. Readonly index signature** — maps to mutable DynamicAccess (readonly lost at type level)
- [x] **D5. Symbol index** — `[Symbol.iterator]()` dropped, only named fields remain

## E. CLI flag behaviors

- [x] **E1. --noStdLib** — verified collections module generates correctly with/without flag (test-flags.sh)
- [x] **E2. --hxnodejs** — tested when @types/node available (test-flags.sh)
- [x] **E3. --allowIntersectionRasterization** — verified Rectangle preserves Point & Size (test-flags.sh)
- [ ] **E4. --includeExternal** — verify external dependencies included in output

## F. Converter edge cases

- [ ] **F1. Circular type depth limit** — deeply recursive type → verify falls to Dynamic at limit
- [x] **F2. Field name collision** — myField/MyField both preserved (case-sensitive in Haxe, but filesystem collision risk)
- [ ] **F3. Construct sig in typedef** — `{ new(x: string): T }` → verify Haxe 4.3 handles it (currently errors)
- [x] **F4. export = function** — verified @:jsRequire and function new (test-flags.sh)
- [ ] **F5. export = namespace** — `export = ns` → verify module structure
- [!] **F6. bigint type** — maps to empty struct `{ }` instead of Dynamic or js.lib.BigInt (BUG)
