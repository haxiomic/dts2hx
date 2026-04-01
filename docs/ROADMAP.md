# Roadmap

## Completed

### TypeScript & Haxe version support
- [x] TypeScript 3.7 → 5.9 upgrade
- [x] Haxe 4.3 build compatibility (`TDAbstract`, `enum abstract`, construct sigs in structs)
- [x] Haxe 5.0 extern compatibility (AbstractAnon replacement, `@:js.import`)
- [x] `import type` / `export type` syntax (TS 3.8+)
- [x] Variadic tuples, labeled tuples (TS 4.0+)
- [x] Template literal types → `String` (TS 4.1+)
- [x] `satisfies`, `const` type parameters (TS 4.9+, 5.0+)

### Type conversion improvements
- [x] Iterator/Iterable type parameter clamping (3 params in TS 5.6+ → 1 in Haxe)
- [x] Type parameter constraints via `getConstraint()` (fixes String structural expansion)
- [x] Class-level constraints: skip complex/generic constraints that cause invariance failures
- [x] `@:native` on typedef fields via generated abstract wrappers with `@:forward` (#48)
- [x] `export default class Foo` preserves original name (was `Default`) (#94)
- [x] Default-exported classes placed at parent package level
- [x] `bigint` → `ts.BigInt` abstract
- [x] `never` → `ts.Never` (Void alias)
- [x] `Readonly<T>` produces `final` fields
- [x] Callable intersections → `@:selfCall` + fields (was `Dynamic`)
- [x] Enum member types → parent enum type (was `String`)
- [x] ECMAScript `#private` fields excluded from externs
- [x] `protected` → no access modifier (was `private`)
- [x] `abstract` classes don't generate default constructor
- [x] Mapped type property resolution for TS 3.9+

### ES module support
- [x] `--esm` flag generates `@:js.import` metadata
- [x] Auto-detect ESM per-package when Haxe 5+ is available
- [x] `.js` extension on relative import paths for Node ESM

### Package handling
- [x] Auto-expand packages with wildcard exports into sub-modules (#109 partial)
- [x] Auto-discover sub-module dependencies through type references
- [x] Generate externs for `@types/*` ambient global types (WebXR, WebGPU)
- [x] `isBuiltIn` detection fixed for TS 6.0+ (`hasNoDefaultLib` fallback)

### Testing
- [x] End-to-end test suite: TS → JS → .d.ts → dts2hx → Haxe → JS → run (195+ assertions)
- [x] Multi-version Haxe test matrix via lix
- [x] Headless browser test for three-bloom example
- [x] Runtime test for express example
- [x] CI: Node 20, Haxe 4.3.6, e2e tests

## Remaining

### Type conversion
- [ ] Index signatures on classes and interfaces (currently partial — `DynamicAccess` for some cases)
- [ ] Redefined class/interface fields in `extends` should be renamed rather than removed
- [ ] Intersection types: rasterize where possible
- [ ] Union types: `AnyOf` with shared property access (see #105)
- [ ] Construct signatures in types → `haxe.Constraints.Constructible` when used as type parameter
- [ ] Enum abstract `final` fields instead of `var` (see docs/planned-fixes.md)
- [ ] Filter out `Void` from `AnyOf2<Void, T>` → just `T`

### Package handling
- [ ] Convert ALL sub-modules of a package (not just referenced ones) — e.g. all `three/examples/jsm/*` (#109)
- [ ] Redesign: single ConverterContext across all input modules for better inter-module interaction
- [ ] `--mergeGlobal` flag: emit `@:jsRequire` + `@:native` with `#if` guards instead of separate `global/` package
- [ ] Cache: don't regenerate if module unchanged and dts2hx version matches

### Code quality
- [ ] Limit maximum type path length to avoid ENAMETOOLONG filesystem errors (#47)
- [ ] Improve comment handling (TypeScript compiler doesn't properly expose declaration comments)
- [ ] Overload documentation (requires extending MetadataItem with doc field)
- [ ] Printer: better multi-line formatting for long function signatures

### Haxe integration
- [ ] Native iteration support (by handling `iterator` symbol)
- [ ] JSDoc → Haxe metadata extraction (`@nosideeffects` → `@:pure`, `@deprecated`)

## Open issues

See [GitHub issues](https://github.com/haxiomic/dts2hx/issues) for the full list. Key issues addressed in this PR:

- #48 — `@:native` on typedef fields ✅
- #91 — TypeScript 4+ support ✅
- #94 — default export naming ✅
- #107 — `import type` support ✅
- #109 — batch generation (partial — wildcard packages only)
- #110 — ESM import support ✅
- #112 — three.js sub-module paths (partial)
- #123 — express example ✅
- #129 — esbuild three.js bundling ✅

## Internal tracking

- [docs/extern-compat-issues.md](extern-compat-issues.md) — EC-1 through EC-10 type system issues (most resolved)
- [docs/TEST_GAPS.md](TEST_GAPS.md) — test coverage gap analysis
- [docs/planned-fixes.md](planned-fixes.md) — specific fix plans for identified issues
