# TypeScript Definitions to Haxe Extern Converter

Command-line tool to convert TypeScript type definitions to haxe externs

<img alt="dts2hx command-line interface" src="https://user-images.githubusercontent.com/3742992/96911625-fef53780-1498-11eb-81de-24d10627d82d.png">

<img src="https://user-images.githubusercontent.com/3742992/71644204-854b4d80-2cbc-11ea-85f9-93c63df51fe3.png" height="24" align="left"> Thanks to the Haxe Foundation for supporting this project!

# Getting Started
- Install dts2hx in your local project as a development dependency:

    `npm install dts2hx --save-dev`

- Install a module with types, for example `npm install three`. If your module of choice doesn't include type definitions, try installing externally maintained ones with `npm install @types/{module-name}`

- Run dts2hx on the node module

    `npx dts2hx three --noGlobal`

    This will generate externs into **.haxelib/three**, to use the externs, add `--library three` to your build.hxml file.
    We add `--noGlobal` because we intend to use the library via `require()` rather than via a global-scope `THREE` object. If you want to use the `THREE` object, add `--noModular`

- Alternatively, generate externs for all local package.json dependencies with

    `npx dts2hx --all`

- For bonus points, add dts2hx as a postinstall script in your package.json so that externs are generated automatically after `npm install`
    ```json
    "scripts": {
      "postinstall": "dts2hx --all"
    }
    ```

See [examples/](examples/) for example projects using popular js libraries

The generated externs use haxe 4+ syntax. See `dts2hx --help` for a complete list of options

# FAQ

- **There are no TypeScript definitions for my module**

    Many popular js modules have external type definitions maintained in places like DefinitelyTyped – try installing external definitions with: `npm install @types/{module-name}`, then use `dts2hx {module-name}` as normal

- **How do you convert a local TypeScript definition file, like index.d.ts?**

    dts2hx uses the same module resolution as TypeScript, so in TypeScript you import types from this file with `import {...} from './index'`, for dts2hx you would do `dts2hx ./index`

- **Why is there a `global` package?**

    TypeScript definitions often define two parallel sets of types, one for use with `<script src="">` (global) imports and the other for use with es6-style module imports. Unfortunately, these two sets of types are often not exactly the same and can differ in subtle ways

    If you don’t want the global directory you can use `dts2hx pixi.js --noGlobal`, or if you _only_ want the global directory you can do `dts2hx pixi.js --noModular`

- **Difference between `@:jsRequire()` and `@:native()`**

    TypeScript type definitions specify whether or not the symbols are accessible globally (`@:native()`) or via module resolution (`@:jsRequire()`). Many type definitions [include both globally available and modular symbols](https://github.com/haxiomic/dts2hx/blob/master/examples/pixi.js/Main.hx#L2). If a library has global symbols, they will be emitted in a package called `global`. all types in the `global` package use `@:native()` metadata, whereas types elsewhere will use `@:jsRequire()`.

    If your types only use `@:jsRequire` and you want to run in a browser (like the [three.js type definitions](https://github.com/haxiomic/dts2hx/tree/alpha-0.9.0/examples/three)), then you can use a bundler. I recommend [esbuild](https://github.com/evanw/esbuild) over webpack and others because it has by far the best performance (~100 milliseconds bundling time).

    For example, to call a bundler after haxe generates your js file, first install esbuild:
    - `npm install esbuild`
    - Then add a `--cmd` that calls esbuild to your hxml, for example:
    ```hxml
    --js example.js
    --cmd npx esbuild example.js --bundle --outfile=bundle.js
    ```
    
    [Here's an complete example for three.js](https://github.com/haxiomic/dts2hx/blob/cb48748bbc8cc8f34a6768cee41acf13612a70a6/examples/three/build.hxml#L10)

- **Should I publish generated types to haxelib?**

    Ideally dts2hx replaces the need to install externs from haxelib, however if the generated externs are not perfect and require manual fixups you may want to publish a curated version to haxelib. Before you do that please consider opening an issue here noting the fixup required instead – it would be better if dts2hx converted more modules perfectly

- **What makes this different from previous approaches?**

   The idea of generating Haxe externs from `.d.ts` files is not new, [ts2hx](https://github.com/Simn/ts2hx) for instance was started 5 years ago already. However, this turned out to not be viable because it implemented a TypeScript parser in Haxe. The maintenance effort required turned out to be too great since TypeScript is evolving quickly.

   This project takes the _opposite_ approach and hooks into the TypeScript compiler API, which simplifies future maintenance a lot.

# Building and Contributing

- Install haxe 4.1.x
- Build with `haxe build.hxml`
- To work on the project, use vscode with the [haxe extension](https://marketplace.visualstudio.com/items?itemName=nadako.vshaxe) and optionally install [Trigger Task on Save](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.triggertaskonsave) so that the project is compiled every save

### Code Overview
- Processing is done in two passes, the first pass enumerates typescript symbols and generates haxe-type paths, as well as stores information on how to reach this symbol (i.e wether it requires a module import or if it's available in the global scope). This work is done in [HaxeTypePathMap.hx](src/HaxeTypePathMap.hx)
- The next pass enumerates accessible symbols again, this time building haxe types using the the haxe macro API and using the typemap generated earlier to handle type references. This work is handled in [ConverterContext.hx](src/ConverterContext.hx). At the bottom of this file I've written notes about how to understand the typescript compiler and how it's used in dts2hx. The TS compiler (at present) is quite opaque much is undocumented so I recommend reading the notes to get you started. Additionally, here's some links I found useful when working on this project

### TypeScript Compiler Documentation Links

- [TypeScript AST Viewer](https://ts-ast-viewer.com/)
- [Architectural-Overview](https://github.com/microsoft/TypeScript/wiki/Architectural-Overview)
- [Using the type checker](https://github.com/microsoft/TypeScript/wiki/Using-the-Compiler-API#using-the-type-checker)
- [Language Specification](https://github.com/microsoft/TypeScript/blob/master/doc/spec.md)
- [Compiler Internals Book](https://basarat.gitbooks.io/typescript/docs/compiler/overview.html)
- See [src/compiler/utilities.ts](https://github.com/microsoft/TypeScript/blob/d6c05a135840dc3045ec8f3bbec1da5ffabb6593/src/compiler/utilities.ts) for compiler API use examples
- See [src/compiler/vistorPublic.ts](https://github.com/microsoft/TypeScript/blob/master/src/compiler/visitorPublic.ts) for an example of fully enumerating the AST

# Roadmap

dts2hx is currently in alpha release, everything _should_ work but please report any issues!

## Road to Beta
- [x] Automatically handle remapping of js built-in and DOM types to haxe std js externs
- [ ] Index signatures
    - [ ] Classes and interfaces
- [ ] Merge global and modular symbols with `#if global @:native(...) # else @:jsRequire(...) #end`
- [ ] Exported variables to class promotion. See [socket.io issue](https://github.com/haxiomic/dts2hx/issues/46) and [#61](https://github.com/haxiomic/dts2hx/issues/61#issuecomment-713989576)
- [ ] Validation system to confirm all test code compiles
- [ ] Explore converting _all_ TypeScript definitions in a package, whether or not they're connected to the package's root types
- [ ] Interface extends
    - [ ] Redefined class and interface fields should be renamed rather than removed
- [ ] Other missing types
- [ ] Don't rerun dts2hx if module has already been generated (so that `postinstall: dts2hx --all` is faster)
    - [ ] Only for libs, use haxelib.json information. Regenerate if dts2hx version has changed
- [ ] CLI: Add `--install` option
    - [ ] Automatically try `install @types/{name}` if no types found in main module
    - [ ] Need to select user's correct package manager (yarn vs npm)
- [ ] Generic build types, `Or$N<T0 ... T$N>` and `ConstOr$N<T0 ... T$N>` to enable better type union behavior (and enable enum subsets)
    - [ ] enum subset example from ts compiler: `type ModifierSyntaxKindEnum = Modifiers['kind']`;
- [ ] Limit maximum type length to avoid filesystem errors when writing .hx files (see [#47](https://github.com/haxiomic/dts2hx/issues/47))
- [ ] Copy printer improvements to haxe standard library
- [ ] :star: **Beta Release** *Not perfect but practically useable*

## Road to 1.0
- [ ] Introduce min haxe feature set flag, so we can convert externs for haxe 4.2+ and add #if guards to support older versions
    - [ ] Use system haxe by default
- [ ] Improve comments (TypeScript compiler doesn't properly expose declaration comments atm)
- [x] When variable fields have function types, convert them to function fields so `@:overloads` are supported and `.call()` isn't required
- [ ] Support native iteration (by handling `iterator` symbol)
- [ ] Advanced type conversions
    - [ ] Support constructor signature in types with `@:genericBuild` abstract
        - If a constructor type is used as a type parameter we can use haxe's `Constructible` type
    - [x] Abstracts to implement Tuples (named fields for array indexes)
    - [ ] Extract hints from JSDoc
        - @nosideeffects -> @:pure (See also https://github.com/google/closure-compiler/wiki/Annotating-JavaScript-for-the-Closure-Compiler)
        - @deprecated
    - [ ] Support union Rest parameters (rare)
- [ ] CLI: Add option to automatically bundle `@:jsRequire()` so a separate bundler isn't required. Maybe a we could use a macro for this
    - Either:
        - bake into the externs
        - include a macro that bundles at compile-time
- [ ] Enable type parameter constraints by default (just needs some type conversion tweaks)
- [x] Haxe-issue: when passing anon objects with `@:native()` fields to externs, `@:native` information is lost
    - [ ] [Hopefully quoted field names will arrive in 4.2](https://github.com/HaxeFoundation/haxe/pull/9433)
- [ ] Intersection types: rasterize where possible
- [ ] :star2: **1.0 Release**
