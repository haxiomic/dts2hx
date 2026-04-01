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
- [ ] **B7. const type parameter** — `function f<const T>(x: T)` → verify `const` is dropped
- [x] **B8. implements multiple interfaces** — `implements A, B` → no `implements` clause in extern

## C. Module/import patterns

- [ ] **C1. ESM vs CJS** — generate extern, verify `@:jsRequire` produces `require()` not `import`, document that ESM modules need bundler
- [ ] **C2. Re-export with rename** — `export { X as Y }` → verify Y exists and works
- [ ] **C3. Module augmentation** — `declare module "express" { interface Request { custom: string } }` → verify augmented field appears
- [ ] **C4. Global augmentation** — `declare global { function myGlobal(): void }` inside a module → verify global is accessible
- [ ] **C5. Side-effect import** — `import "polyfill"` → verify it doesn't crash, document it's not representable

## D. Index signature gaps

- [x] **D1. String index + named fields** — index dropped, named kept, Dynamic for index access
- [ ] **D2. Number index + named fields** — (tested in ts-features NumberIndexed)
- [x] **D3. Multiple index sigs** — both indexes dropped, only named field `length` remains
- [ ] **D4. Readonly index signature** — `{ readonly [key: string]: T }` → verify readonly-ness
- [x] **D5. Symbol index** — `[Symbol.iterator]()` dropped, only named fields remain

## E. CLI flag behaviors

- [ ] **E1. --noStdLib** — convert with flag, verify Array/Map/etc generate custom externs instead of mapping to std
- [ ] **E2. --hxnodejs** — convert node types, verify Buffer/EventEmitter etc map to hxnodejs types
- [ ] **E3. --allowIntersectionRasterization** — verify intersections become anon objects
- [ ] **E4. --includeExternal** — verify external dependencies included in output

## F. Converter edge cases

- [ ] **F1. Circular type depth limit** — deeply recursive type → verify falls to Dynamic at limit
- [ ] **F2. Field name collision** — two TS fields mapping to same Haxe name → verify renamed with suffix
- [ ] **F3. Construct sig in typedef** — `{ new(x: string): T }` → verify Haxe 4.3 handles it (currently errors)
- [ ] **F4. export = function** — `export = function(...)` → verify @:selfCall class
- [ ] **F5. export = namespace** — `export = ns` → verify module structure
- [ ] **F6. bigint type** — verify conversion path
