# TypeScript Definitions to Haxe Extern Converter

Command-line tool to convert TypeScript type definitions to haxe externs

<img alt="dts2hx command-line interface" src="https://user-images.githubusercontent.com/3742992/96911625-fef53780-1498-11eb-81de-24d10627d82d.png">

<img src="https://user-images.githubusercontent.com/3742992/71644204-854b4d80-2cbc-11ea-85f9-93c63df51fe3.png" height="24" align="left"> Thanks to the Haxe Foundation for supporting this project!

# Getting Started
- Install dts2hx in your local project as a development dependency:

    `npm install dts2hx --save-dev`

- Install a module with types, for example `npm install three`. If your module of choice doesn't include type definitions, try installing externally maintained ones with `npm install @types/{module-name}`

- Run dts2hx on the node module

    `npx dts2hx three --modular`

    This will generate externs into **.haxelib/three**, to use the externs, add `--library three` to your build.hxml file.
    We add `--modular` because we intend to use the library via `require()` or `import` rather than via a global-scope object. If you want to use the global object, add `--global`

- For packages with multiple entry points (wildcard exports like `"./*"`), dts2hx auto-discovers all sub-modules:

    `npx dts2hx haxiomic-engine --modular`

- Alternatively, generate externs for all local package.json dependencies with

    `npx dts2hx --all`

- For bonus points, add dts2hx as a postinstall script in your package.json so that externs are generated automatically after `npm install`
    ```json
    "scripts": {
      "postinstall": "dts2hx --all"
    }
    ```

See [examples/](examples/) for example projects using popular js libraries

The generated externs require Haxe 4.3+. See `dts2hx --help` for a complete list of options

## ES Module Support

For packages using ES modules (`"type": "module"` in package.json), dts2hx can generate `@:js.import` metadata instead of `@:jsRequire`:

```
npx dts2hx three --modular --esm
```

When Haxe 5+ is the system compiler, ESM is auto-detected per-package — no `--esm` flag needed.

For Haxe 4.3 users with ESM packages, add `--conditions=import` to your esbuild command to avoid duplicate bundling:
```hxml
--cmd npx esbuild dist/main.js --bundle --outfile=dist/bundle.js --conditions=import
```

# FAQ

- **There are no TypeScript definitions for my module**

    Many popular js modules have external type definitions maintained in places like DefinitelyTyped – try installing external definitions with: `npm install @types/{module-name}`, then use `dts2hx {module-name}` as normal

- **How do you convert a local TypeScript definition file, like index.d.ts?**

    dts2hx uses the same module resolution as TypeScript, so in TypeScript you import types from this file with `import {...} from './index'`, for dts2hx you would do `dts2hx ./index`

- **Why is there a `global` package?**

    TypeScript definitions often define two parallel sets of types, one for use with `<script src="">` (global) imports and the other for use with es6-style module imports. Unfortunately, these two sets of types are often not exactly the same and can differ in subtle ways

    If you don't want the global directory you can use `dts2hx pixi.js --modular`, or if you _only_ want externs without the global directory you can do `dts2hx pixi.js --global`

    You can customize the name of the global directory with `--globalPackageName`

- **Difference between `@:jsRequire()`, `@:js.import()`, and `@:native()`**

    TypeScript type definitions specify whether or not the symbols are accessible globally (`@:native()`) or via module resolution (`@:jsRequire()` for CommonJS, `@:js.import()` for ES modules). Many type definitions include both globally available and modular symbols. If a library has global symbols, they will be emitted in a package called `global`. All types in the `global` package use `@:native()` metadata, whereas types elsewhere will use `@:jsRequire()` or `@:js.import()`.

    If your types use `@:jsRequire` and you want to run in a browser, you need a bundler. We recommend [esbuild](https://github.com/evanw/esbuild):
    - `npm install esbuild`
    - Add a `--cmd` that calls esbuild to your hxml:
    ```hxml
    --js example.js
    --cmd npx esbuild example.js --bundle --outfile=bundle.js
    ```

- **Should I publish generated types to haxelib?**

    Ideally dts2hx replaces the need to install externs from haxelib, however if the generated externs are not perfect and require manual fixups you may want to publish a curated version to haxelib. Before you do that please consider opening an issue here noting the fixup required instead – it would be better if dts2hx converted more modules perfectly

- **What makes this different from previous approaches?**

   The idea of generating Haxe externs from `.d.ts` files is not new, [ts2hx](https://github.com/Simn/ts2hx) for instance was started 5 years ago already. However, this turned out to not be viable because it implemented a TypeScript parser in Haxe. The maintenance effort required turned out to be too great since TypeScript is evolving quickly.

   This project takes the _opposite_ approach and hooks into the TypeScript compiler API, which simplifies future maintenance a lot.

# Building and Contributing

- Install Haxe 4.3+
- Install hxnodejs: `haxelib install hxnodejs`
- Build with `haxe build.hxml`
- To work on the project, use vscode with the [haxe extension](https://marketplace.visualstudio.com/items?itemName=nadako.vshaxe) and optionally install [Trigger Task on Save](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.triggertaskonsave) so that the project is compiled every save

### Code Overview
- Processing is done in two passes, the first pass enumerates typescript symbols and generates haxe-type paths, as well as stores information on how to reach this symbol (i.e wether it requires a module import or if it's available in the global scope). This work is done in [HaxeTypePathMap.hx](src/HaxeTypePathMap.hx)
- The next pass enumerates accessible symbols again, this time building haxe types using the the haxe macro API and using the typemap generated earlier to handle type references. This work is handled in [ConverterContext.hx](src/ConverterContext.hx). At the bottom of this file I've written notes about how to understand the typescript compiler and how it's used in dts2hx. The TS compiler (at present) is quite opaque much is undocumented so I recommend reading the notes to get you started. Additionally, here's some links I found useful when working on this project

### Testing

Tests are run with `npm test` which generates externs for a range of libraries and edge cases, then runs an end-to-end test suite that compiles Haxe against the generated externs and runs the output in Node.js.

The e2e test suite (`test/e2e/`) includes:
- 195+ runtime assertions testing generated externs against real JS modules
- Compile-time enforcement tests verifying type safety
- CLI mode and flag tests
- Multi-version Haxe testing via `test/e2e/run-matrix.sh` (requires lix)

### TypeScript Compiler Documentation Links

- [TypeScript AST Viewer](https://ts-ast-viewer.com/)
- [Architectural-Overview](https://github.com/microsoft/TypeScript/wiki/Architectural-Overview)
- [Using the type checker](https://github.com/microsoft/TypeScript/wiki/Using-the-Compiler-API#using-the-type-checker)
- [Language Specification](https://github.com/microsoft/TypeScript/blob/master/doc/spec.md)
- [Compiler Internals Book](https://basarat.gitbooks.io/typescript/docs/compiler/overview.html)
- See [src/compiler/utilities.ts](https://github.com/microsoft/TypeScript/blob/d6c05a135840dc3045ec8f3bbec1da5ffabb6593/src/compiler/utilities.ts) for compiler API use examples
- See [src/compiler/vistorPublic.ts](https://github.com/microsoft/TypeScript/blob/master/src/compiler/visitorPublic.ts) for an example of fully enumerating the AST

# Roadmap

See [docs/ROADMAP.md](docs/ROADMAP.md) for the full roadmap of completed and planned work.
