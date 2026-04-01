# Examples Test Results

## Runtime Results

| Example | Build | Runtime | Details |
|---------|-------|---------|---------|
| babylonjs | PASS | PASS | Canvas created, BABYLON engine loaded |
| phaser | PASS | PASS | Phaser canvas created |
| pixi.js | PASS | PASS | PIXI canvas created |
| playcanvas | PASS | PASS | PlayCanvas canvas created |
| three | PASS | PASS | Three.js canvas created |
| express | FAIL | SKIP | Iterable type param count mismatch in generated node TypedArray replacements |

## Fixes Applied This Session

- `examples/express/Server.hx`: `Router.call_()` -> `Router.call()` (generated API renamed)
- `examples/three/package.json`: esbuild `^0.1.18` -> `^0.24.0` (Apple Silicon compat)
- All examples: `"dts2hx": "*"` -> `"dts2hx": "file:../../"` (use local build)
- `examples/express/package.json`: pinned `@types/express` 4.17.6, `@types/node` 11.11.3, `@types/express-serve-static-core` 4.17.7, `@types/serve-static` 1.13.3, `@types/range-parser` 1.2.3

## Open Issues

### 1. Iterable type parameter count mismatch (blocks express)
TS 5.7+ `Iterable<T, TReturn, TNext>` (3 params) maps to Haxe `Iterable<T>` (1 param).
Generated TypedArray replacement types reference `Iterable<Float, Dynamic, Dynamic>` which
Haxe rejects. Fix: truncate type args to Haxe std lib param count at reference sites.
- File: `ConverterContext.hx` type reference resolution
- No backward compat concern (produces fewer args, valid for all Haxe versions)

### 2. `@:enum abstract` deprecation in generated externs
dts2hx emits `@:enum` metadata (deprecated in Haxe 4.3+). Should emit `enum abstract` for
Haxe >= 4.3, `@:enum abstract` for < 4.3. Fix in Printer.hx, version-gated.
- Also in dts2hx source: `src/Console.hx`, `lib/typescript/ts/*.hx`
- Backward compat: detect Haxe version, emit appropriate syntax

### 3. `[object Object]` diagnostic message
`Log.hx:132` stringifies `diagnostic.messageText` which can be a `DiagnosticMessageChain`
object. Fix: use `Ts.flattenDiagnosticMessageText()` or unwrap `.messageText` field.
- No backward compat concern (log formatting only)

### 4. Root `package.json` TS version
`"typescript": "^5.9.3"` can resolve to 6.x. Pin to exact `"5.9.3"`.
- No backward compat concern

## Resolved This Session

- **Null type in complexTypeFromTsType**: Fixed. TS 4.0+ expanded tuple rest params
  recovered via `tc.getTypeOfSymbolAtLocation(s, signatureDeclarationNode)`.
  0 null types across all unit tests. Dynamic -> actual types (String, Float, Bool).

_Tested: 2026-04-01_
_Runtime: puppeteer-core + system Chrome (headless, ANGLE WebGL)_
