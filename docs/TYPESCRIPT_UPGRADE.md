# TypeScript Upgrade Progress

Tracking progressive TS upgrades from 3.7.4 to 5.9.3.
For each version: upgrade, build, test, fix issues, add test cases.

## Completed

### TS 3.8.3 (from 3.7.4)
- **Features**: `import type`, `export type`, `export * as ns`
- **Converter changes**: None — handled transparently by TS compiler API
- **Test**: No new test file needed
- **Status**: ✅

### TS 3.9.10
- **Features**: No new .d.ts syntax (type-checking behavior changes)
- **Converter changes**: `getTsTypeOfField` fallback chain for mapped type properties
- **Test**: Covered by `mapped-types.d.ts`
- **Status**: ✅

### TS 4.0.8
- **Features**: Variadic tuple types, labeled tuple elements, rest elements anywhere
- **Converter changes**:
  - `getExpandedParameters` returns `Symbol[][]` — unwrap first element
  - Null type guard in `complexTypeFromTsType`
  - Undefined name guard in `toSafeIdent` and `isAccessibleField`
- **Test**: `tuples.d.ts`
- **Status**: ✅

### TS 4.1.6
- **Features**: Template literal types, key remapping (`as`), recursive conditional types, intrinsic string types
- **Converter changes**: Added `TemplateLiteral` and `StringMapping` TypeFlags → map to String
- **Test**: `ts4.1.d.ts` — all features verified
- **Status**: ✅

### TS 4.2.4
- **Features**: Leading/middle rest in tuples, abstract construct signatures
- **Converter changes**: None — rest element handling already works from 4.0 fix
- **Test**: `ts4.2.d.ts` — LeadingRest/MiddleRest → `Tuple<..., Array<T>, ...>` ✅
- **Status**: ✅

### TS 4.3.5
- **Features**: Separate getter/setter types, `override` keyword, static index signatures
- **Converter changes**: None
- **Test**: `ts4.3.d.ts`
- **Known limitation**: Separate getter/setter types — only getter type preserved in Haxe (no equivalent)
- **Status**: ✅

### TS 4.4.4 — 4.6.4
- **Features**: Symbol index sigs, exact optional, type modifier on imports, Awaited<T>
- **Converter changes**: None — handled transparently
- **Status**: ✅

### TS 4.7.4
- **Features**: Variance annotations (in/out), `infer ... extends` constraints
- **Converter changes**: None — variance annotations silently ignored (no Haxe equivalent)
- **Test**: `ts4.7.d.ts` — Result1→String, Result2→Never ✅
- **Status**: ✅

### TS 4.8.4 — 4.9.5
- **Features**: Intersection reduction, `satisfies`, `accessor` keyword
- **Converter changes**: None
- **Test**: `ts4.9.d.ts` — auto-accessors → regular properties ✅
- **Status**: ✅

### TS 5.0.4
- **Features**: `const` type parameters, TC39 decorators
- **Converter changes**: None
- **Test**: `ts5.0.d.ts` — decorators as functions, enum improvements ✅
- **Known limitation**: `const` modifier on type params lost (inference-only, acceptable)
- **Status**: ✅

### TS 5.1.6 — 5.3.3
- **Features**: Unrelated getter/setter types, using/await using, import attributes
- **Converter changes**: None
- **Status**: ✅

### TS 5.4.5
- **Features**: `NoInfer<T>` utility type
- **Converter changes**: Handle `TypeFlags.Substitution` — unwrap `baseType` for NoInfer<T>
- **Test**: `ts5.4.d.ts` — `NoInfer<C>` → `C` ✅
- **Status**: ✅

### TS 5.5.4 — 5.9.3
- **Features**: Inferred type predicates, iterator types, generic TypedArrays, import defer
- **Converter changes**: None
- **Status**: ✅

## Type Conversion Improvements

- `Readonly<T>` → `final` fields
- `never` → `ts.Never` (Void alias) instead of Any
- Tuple rest elements → `Array<T>` instead of bare `T`
- Construct signatures in interfaces → `function new()` field
- Type parameter constraints enabled by default
- `NoInfer<T>` → unwrapped to `T` via Substitution type handling
- Template literal types → `String`
- String mapping types (Uppercase etc.) → `String`

## Remaining Known Limitations

These are fundamental Haxe limitations, not converter bugs:
- Separate getter/setter types (only getter type preserved)
- `const` type parameter modifier (inference-only, lost)
- Generic conditional types → Dynamic (require dependent types)
- String literal types in discriminated unions → String
- Symbol-indexed properties → dropped
- `undefined` and `null` conflated into `Null<T>`
