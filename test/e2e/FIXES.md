# Fixable Limitations — Work Plan

Each fix includes: code change, test update, assertion that now passes differently.

## Easy (< 15 lines each)

- [x] **B1. #private fields → skip entirely**
  - Current: `#secret` → `@:native("#private") var HashPrivate : Dynamic` (wrong — inaccessible field exposed with mangled name)
  - Fix: in `isAccessibleField`, filter out symbols whose name starts with `__#` (TS internal representation of `#private`)
  - Test: verify `WithPrivateField` extern has no `HashPrivate` field, only `reveal()` method
  - File: `src/tool/TsSymbolTools.hx`

- [x] **B2. protected → no modifier (not private)**
  - Current: `protected value` → `private var value` (too restrictive for externs)
  - Fix: in `accessFromModifiers`, map `ProtectedKeyword` to nothing (or skip) instead of `APrivate`
  - Test: verify `WithProtected.value` is not `private` in extern
  - File: `src/ConverterContext.hx` line ~1910

- [x] **B3. abstract class → no constructor**
  - Current: `abstract class Shape` → has `function new()` (instantiable, wrong)
  - Fix: check for `AbstractKeyword` in class declaration modifiers, skip default constructor generation
  - Test: verify `AbstractShape` has no `new()`, verify `ConcreteCircle` still has `new(radius)`
  - File: `src/ConverterContext.hx` around line 518-521

- [ ] **B8. implements clause → populate interface list**
  - Current: `class Foo implements A, B` → `TDClass(super, [], false, false)` (empty implements)
  - BLOCKED: dts2hx generates TS interfaces as Haxe typedefs, but Haxe `implements` requires Haxe interfaces. Needs interface-structure generation changes first.
  - File: `src/ConverterContext.hx` around line 529-533

- [ ] **A12. Callable intersection → anon with @:selfCall**
  - Current: `((x: string) => number) & { description: string }` → `Dynamic`
  - Fix: when an intersection has call signatures + properties, produce anon struct with `@:selfCall` function + fields (the code already handles this pattern in `complexTypeAnonFromTsType` — the issue is the intersection path doesn't use it)
  - Test: verify `CallableWithField` has both callable and `description` field
  - File: `src/ConverterContext.hx` intersection handling

- [ ] **D1. Mixed string index + named fields → DynamicAccess + fields**
  - Current: `{ [key: string]: any; name: string; age: number }` → `{ name: String, age: Float }` (index dropped)
  - Fix: when both string index sig AND named fields exist, use Haxe's `haxe.DynamicAccess<T>` as a base and add the named fields. Or at minimum, extend `DynamicAccess` while keeping named fields.
  - Alternative: keep current behavior but add a comment/metadata indicating the index sig was dropped
  - Test: verify `MixedStringIndex` has named fields AND some way to access arbitrary keys
  - File: `src/ConverterContext.hx` around line 707 and line 1338-1345

## Moderate (15-30 lines)

- [ ] **A10. Enum member type → enum type instead of String**
  - Current: `type ActiveOnly = Status.Active` → `typedef ActiveOnly = String`
  - Fix: when a type alias resolves to an enum member, use the parent enum type
  - Test: verify `ActiveOnly` is `Status` not `String`
  - File: `src/ConverterContext.hx` type alias handling

## Tracking

Total: 7 items
Done: 3 (B1, B2, B3)
Blocked: 1 (B8 — needs interface vs typedef refactor)
Remaining: 3 (A12, D1, A10)
