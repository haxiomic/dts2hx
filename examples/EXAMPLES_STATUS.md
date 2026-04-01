# Examples Test Results

## Runtime Results

| Example | Build | Runtime | Details |
|---------|-------|---------|---------|
| babylonjs | PASS | PASS | Canvas created, BABYLON engine loaded |
| phaser | PASS | PASS | Phaser canvas created |
| pixi.js | PASS | PASS | PIXI canvas created |
| playcanvas | PASS | PASS | PlayCanvas canvas created |
| three | PASS | PASS | Three.js canvas created |
| express | FAIL | SKIP | Build fails: `Iterable` type parameter count mismatch in generated TypedArray replacement types |

## Fixes Applied

- `examples/express/Server.hx`: `Router.call_()` -> `Router.call()` (generated API changed)
- `examples/three/package.json`: esbuild `^0.1.18` -> `^0.24.0` (Apple Silicon compat)
- All examples: `"dts2hx": "*"` -> `"dts2hx": "file:../../"` (use local build instead of npm v0.20.0)
- `examples/express/package.json`: pinned `@types/express` 4.17.6, `@types/node` 11.11.3, `@types/express-serve-static-core` 4.17.7, `@types/serve-static` 1.13.3, `@types/range-parser` 1.2.3

## Open Bugs (converter regressions)

### 1. Iterable type parameter count mismatch (blocks express example)
TS 5.7+ expanded `Iterable<T>` to `Iterable<T, TReturn, TNext>`. When dts2hx generates
replacement types for TypedArrays (due to Haxe/TS parameter count mismatch), references
to `Iterable` within those types keep all 3 TS parameters, but Haxe's `Iterable` only
accepts 1. **Fix needed:** truncate type arguments to match Haxe std lib parameter count.
- Location: `HaxeTypePathMap.hx` replacement type generation / `ConverterContext.hx` type reference resolution
- Affects: any conversion that includes `@types/node` with TS >= 5.7

### 2. Null type passed to complexTypeFromTsType (non-fatal)
10 occurrences during unit tests where `complexTypeFromTsType()` receives a null type.
Guarded to return `Dynamic`, but root cause not fixed. Likely from TS 4.0+ tuple/mapped
type internal changes where `typeArguments` contains undefined elements.
- Impact: affected fields become `Dynamic` instead of correct type
- Affects: `types` unit test module most visibly

## Open Warnings (non-blocking)

### 3. `@:enum abstract` deprecation in generated externs
dts2hx emits `@:enum abstract` (deprecated in Haxe 4.3+) instead of `enum abstract`.
Affects all generated enum abstracts. Also present in dts2hx's own source:
- `src/Console.hx` (5 occurrences)
- `lib/typescript/ts/*.hx` (38 files)
- All generated externs with enum types

### 4. `[object Object]` diagnostic errors during conversion
`@types/node` v25+ emits `[object Object]` as a TS diagnostic error (from
`globals.d.ts:237`). The diagnostic message formatting doesn't handle object-type
diagnostics. Non-blocking — conversion continues successfully.

### 5. Root `package.json` TS version caret resolution
`"typescript": "^5.9.3"` resolves to 6.0.2 with npm. Should be pinned exact
(`"typescript": "5.9.3"`) to avoid unexpected runtime behavior.

_Tested: 2026-04-01_
_Runtime tests use puppeteer-core with system Chrome (headless + ANGLE WebGL)_
