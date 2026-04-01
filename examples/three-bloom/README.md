# three.js + haxiomic-engine bloom example

Demonstrates using dts2hx-generated externs for:
- **three.js r182** (latest) with full type support
- **haxiomic-engine** PhysicallyBasedViewer with bloom post-processing

## Setup

```bash
npm install     # installs deps + generates Haxe externs
haxe build.hxml # compiles Haxe → JS → bundled JS
```

## How it works

1. `npm install` runs `dts2hx --modular three haxiomic-engine` which:
   - Converts three.js type definitions to Haxe externs
   - Auto-discovers and converts all haxiomic-engine sub-modules (65+ files)
   - Generates externs into `.haxelib/`

2. `haxe build.hxml` compiles `Main.hx` against the generated externs

3. `esbuild` bundles the output into `dist/bundle.js`

## ESM support

three.js and haxiomic-engine are ESM packages (`"type": "module"`).

By default, dts2hx generates `@:jsRequire` metadata (CommonJS `require()`),
which works with bundlers like esbuild that handle both CJS and ESM.

For native ESM output (Haxe 5+), use `--esm`:
```bash
dts2hx --modular --esm three haxiomic-engine
```
This generates `@:js.import` metadata producing ES module `import` statements.
