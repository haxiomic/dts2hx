# TypeScript Upgrade Progress

Tracking progressive TS upgrades from 3.7.4 to latest.
For each version: upgrade, build, test, fix issues, add test cases.

## Completed

### TS 3.8.3 (from 3.7.4)
- **Features**: `import type`, `export type`, `export * as ns`
- **Converter changes**: None needed — handled transparently by TS compiler API
- **Status**: ✅ Clean

### TS 3.9.10
- **Features**: No new .d.ts syntax (type-checking behavior changes only)
- **Converter changes**: `getTsTypeOfField` fallback chain for mapped type properties that lost `valueDeclaration` in TS 3.9
- **Status**: ✅ Clean

### TS 4.0.8
- **Features**: Variadic tuple types, labeled tuple elements, rest elements anywhere
- **Converter changes**:
  - `getExpandedParameters` now returns `Symbol[][]` — unwrap first element
  - Null type guard in `complexTypeFromTsType`
  - Undefined name guard in `toSafeIdent` and `isAccessibleField`
- **Status**: ✅ Clean

## In Progress

### TS 4.1
- **Features**: Template literal types, mapped type key remapping (`as`), recursive conditional types, intrinsic string manipulation types
- **Status**: Not started

## Remaining

- 4.2: Leading/middle rest elements in tuples, abstract construct signatures
- 4.3: Separate getter/setter types, `override` keyword, static index signatures
- 4.4: Symbol index signatures, template string pattern index signatures
- 4.5: `type` modifier on individual imports, import assertions
- 4.6: (inference/narrowing only)
- 4.7: Variance annotations (in/out), `infer ... extends`, `.d.mts`/`.d.cts`
- 4.8: Improved intersection reduction
- 4.9: `satisfies` operator, `accessor` keyword
- 5.0: Decorators, `const` type parameter modifier
- 5.1: Unrelated getter/setter types
- 5.2: `using`/`await using`, decorator metadata
- 5.3: Import attributes (`with` syntax)
- 5.4: `NoInfer<T>`
- 5.5: Inferred type predicates
- 5.6: Iterator types, arbitrary module identifiers
- 5.7: Generic TypedArrays
- 5.8: Preserved computed property names
- 5.9: `import defer`, ArrayBuffer restructuring

## Type Conversion Improvements (done)

- Readonly<T> → `final` fields
- `never` → `ts.Never` (Void alias) instead of Any
- Tuple rest elements → `Array<T>` instead of bare `T`
- Construct signatures in interfaces → `function new()` field
- Type parameter constraints enabled by default
