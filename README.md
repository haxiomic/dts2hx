# TypeScript Definitions to Haxe Extern Converter

Command-line tool to convert TypeScript type definitions to haxe externs

<img alt="dts2hx command-line interface" src="https://user-images.githubusercontent.com/3742992/80704644-db9a9280-8adc-11ea-8de2-38ff818b22de.png">

<img src="https://user-images.githubusercontent.com/3742992/71644204-854b4d80-2cbc-11ea-85f9-93c63df51fe3.png" height="24" align="left"> Thanks to the Haxe Foundation for supporting this project!

# Getting Started
- Install dts2hx in your local project as a development dependency:

    `npm install dts2hx --save-dev`

- Install a module with types, for example `npm install three` 

- Run dts2hx on the node module

    `npx dts2hx three`

- Alternatively, generate externs for all local package.json dependencies with

    `npx dts2hx --all`

- For bonus points, add dts2hx as a postinstall script in your package.json so that externs are generated automatically after `npm install`
    ```json
    "scripts": {
      "postinstall": "dts2hx --all"
    }
    ```

See [examples/](examples/) for example projects using popular typescript libraries

The generated externs use haxe 4+ syntax. See `dts2hx --help` for a complete list of options

# Roadmap

dts2hx is currently in alpha release, everything _should_ work but please report any issues!

## Road to Beta
- [x] Automatically handle remapping of js built-in and DOM types to haxe std js externs
- [ ] Validation system to confirm all test code compiles **← :star: currently working on this**
- [ ] Explore converting _all_ typescript definitions in a package, whether or not they're connected to the package's root types
- [ ] Redefined class and interface fields should be renamed rather than removed
- [ ] Interface extends
- [ ] Index signatures
    - [ ] Classes and interfaces
- [ ] Intersection types: handle more cases
- [ ] Other missing types
- [ ] Don't rerun dts2hx if module has already been generated (so that `postinstall: dts2hx --all` is faster)
- [ ] :star: **Beta Release** *Not perfect but practically useable*

## Road to 1.0
- [ ] Improve comments (typescript compiler doesn't properly expose declaration comments atm)
- [ ] Introduce min haxe feature set flag, so we can convert externs for haxe 4.2+
- [ ] Support native iteration (by handling `iterator` symbol)
- [ ] Advanced type conversions
    - [ ] Generic build types, `Or$N<T0 ... T$N>` and `ConstOr$N<T0 ... T$N>` to enable better type union behavior (and enable enum subsets)
        - [ ] enum subset example from ts compiler: `type ModifierSyntaxKindEnum = Modifiers['kind']`;
    - [ ] Support constructor signature in types with `@:genericBuild` abstract
        - If a constructor type is used as a type parameter we can use haxe's `Constructible` type
    - [x] Abstracts to implement Tuples (named fields for array indexes)
    - [ ] Extract hints from JSDoc
        - @nosideeffects -> @:pure (See also https://github.com/google/closure-compiler/wiki/Annotating-JavaScript-for-the-Closure-Compiler)
        - @deprecated
- [ ] CLI: Add `--install` option
    - [ ] Automatically try `install @types/{name}` if no types found in main module
- [ ] CLI: Add option to automatically bundle `@:jsRequire()` so a separate bundler isn't required. Maybe a we could use a macro for this
    - Either:
        - bake into the externs
        - include a macro that bundles at compile-time
- [ ] Copy printer improvements to haxe standard library
- [ ] Integrate [dts-gen](https://github.com/microsoft/dts-gen) so we can generate haxe externs for js libraries with no type definitions
- [ ] Review situation with constraints (currently disabled), can issues be resolved?
- [ ] Support union Rest parameters
- [ ] Haxe-issue: when passing anon objects with `@:native()` fields to externs, `@:native` information is lost
- [ ] :star2: **1.0 Release**

# FAQ

- Should I publish generated types to haxelib?

    Ideally dts2hx replaces the need to install externs from haxelib, however if the generated externs are not perfect and require manual fixups you may want to publish a curated version to haxelib. Before you do that please consider opening an issue here noting the fixup required instead – it would be better if dts2hx converted more modules perfectly

- What makes this different from previous approaches?

   The idea of generating Haxe externs from `.d.ts` files is not new, [ts2hx](https://github.com/Simn/ts2hx) for instance was started 5 years ago already. However, this turned out to not be viable because it implemented a TypeScript parser in Haxe. The maintenance effort required turned out to be too great since TypeScript is evolving quickly.

   This project takes the _opposite_ approach and hooks into the TypeScript compiler API, which simplifies future maintenance a lot.
