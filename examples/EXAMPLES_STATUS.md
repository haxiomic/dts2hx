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
- All examples: `"dts2hx": "*"` -> `"dts2hx": "file:../../"` (use local build)
- `examples/express/package.json`: pinned `@types/express` 4.17.6, `@types/node` 11.11.3, `@types/express-serve-static-core` 4.17.7, `@types/serve-static` 1.13.3, `@types/range-parser` 1.2.3

## Remaining Issues

### Express build failure (regression)
TS 5.7+ made `Iterable<T>` become `Iterable<T, TReturn, TNext>` (3 params). When dts2hx
generates replacement types for TypedArrays (due to Haxe/TS parameter count mismatch),
references to `Iterable` within those replacement types keep all 3 TS parameters, but
Haxe's `Iterable` only accepts 1. Fix needed in converter to truncate type arguments
to match Haxe std lib parameter count.

### Cosmetic: `@:enum abstract` warnings
All examples emit deprecation warnings from generated externs using `@:enum abstract`
instead of `enum abstract`. Non-blocking but noisy.

_Tested: 2026-04-01_
_Runtime tests use puppeteer-core with system Chrome (headless + ANGLE WebGL)_
