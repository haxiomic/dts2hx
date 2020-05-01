# TypeScript Definitions to Haxe Extern Converter

Command-line tool to convert TypeScript type definitions to haxe externs

<img alt="dts2hx command-line interface" src="https://user-images.githubusercontent.com/3742992/80704644-db9a9280-8adc-11ea-8de2-38ff818b22de.png">

<img src="https://user-images.githubusercontent.com/3742992/71644204-854b4d80-2cbc-11ea-85f9-93c63df51fe3.png" height="24" align="left"> Thanks to the Haxe Foundation for supporting this project!

# Getting Started
- Install dts2hx in your local project as a development dependency:

    `npm install dts2hx --save-dev`
- Install a node module with types, e.g. `npm install three` 
- Run dts2hx on the node module

    `npx dts2hx three`
- Alternatively, generate externs for all local node dependencies with

    `npx dts2hx --all`
- (The generated externs use haxe 4+ syntax)
- For bonus points, add dts2hx as a postinstall script in your package.json so that externs are generated automatically after `npm install`
    ```json
    "scripts": {
      "postinstall": "dts2hx --all"
    }
    ```


# Roadmap
- [x] Rewrite in haxe using generated TypeScript compiler externs
    - [x] Resolve how we handle modules vs ambient declarations in terms import metadata like `@:jsRequire`
        - three.js uses only module `export`s, but is often used as ambient – maybe we #if guard the @:jsRequire to allow disabling
        - babylon.js and many other project use both, do we merge or just parse as-is?
            -> Babylon.js duplicates class definitions between ambient and export, so we could do a string comparison for equality but it's generally a design issue of their definitions
            -> However, this would generate two sets of externs, one ambient and the other module-based, which is a good result
    - [x] Support referencing module name like `dts2hx three`
    - [x] The most common use case will be converting _all_ dependencies. So support `dts2hx --all` or similar
    - [x] Basic module structure
        - [x] Class & Interface
        - [x] Typedef
        - [x] Enum
    - [x] ValueModules
    - [x] Type references
        - [x] Resolve name collisions, for example, `URL` and `Url` in node.js will be both be mapped to `url.hx`
        - [x] Generate externs for built-in types that aren't in the haxe standard library yet
        - [x] Type-node references
    - [x] Basic conversion of fundamental types
        - [x] Enums
        - [x] Primitives
        - [x] Type references
        - [x] TypeLiteral types (objects literals)
        - [x] Unions with EitherType
        - [x] Function types
        - [x] Type parameters
        - [x] Tuple types
        - [x] This type
        - [x] Overloads
        - [x] ESSymbol fields
    - [x] Handle `export default` better
    - [x] Global fields
    - [x] Detect constructable fields, promote to classes and merge with existing interfaces
    - [x] Resolve typescript interface vs haxe interface (use anons instead?)
    - [x] Classes and interfaces
        - [x] Constructors
    - [x] Generate readme with dtshx version, typescript version, commit and input commands for reproducibility
    - [x] Generate a haxelib.json file
    - [x] Determine dependencies (like jquery -> sizzle) and add to haxelib.json
    - [x] Remove type-path prefix if referencing type within the same module
- [x] Command-line interface
    - [x] Convert local `.d.ts` files
- [x] Handle type parameters when rasterizing types
    - [x] Information loss in function signatures
- [x] Class extends
- [x] Rest parameters
- [ ] Docs: How-to-use + examples
- [ ] :star: **Alpha Release** *_should_ work but please look for issues!*

**Road to Beta**
- [ ] Validation system to confirm all test code compiles **← :star: currently working on this**
- [ ] Interface extends
- [ ] Automatically handle remapping of js built-in and DOM types to haxe std js externs
- [ ] Index signatures
    - [ ] Classes and interfaces
- [ ] Intersection types
- [ ] Other missing types
- [ ] Callable classes type II
- [ ] Review situation with constraints (currently disabled), can issues be resolved?
- [ ] Support complex Rest parameters like unions and tuples
- [ ] Don't rerun dts2hx if module has already been generated (so that `postinstall: dts2hx --all` is faster)
- [ ] :star: **Beta Release** *Not perfect but practically useable*

**Road to 1.0**
- [ ] Improve comments (typescript compiler doesn't properly expose declaration comments atm)
- [ ] Advanced type conversions
    - [ ] Support native iteration (by handling `iterator` symbol)
    - [ ] Generic build types, `Or$N<T0 ... T$N>` and `ConstOr$N<T0 ... T$N>` to enable better type union behavior (and enable enum subsets)
        - [ ] enum subset example from ts compiler: `type ModifierSyntaxKindEnum = Modifiers['kind']`;
    - [ ] Support constructor signature in types, maybe with something like `: { function construct(): X }` + magic
        - Requires [`@:newCall`](https://github.com/HaxeFoundation/haxe/issues/9335) feature
        - If a constructor type is used as a type parameter we can use haxe's `Constructible` type
    - [x] Abstracts to implement Tuples (named fields for array indexes)
    - [ ] Extract hints from JSDoc like @nosideeffects -> @:pure (See also https://github.com/google/closure-compiler/wiki/Annotating-JavaScript-for-the-Closure-Compiler)
- [ ] CLI: Add `--install` option
    - [ ] Automatically try `install @types/{name}` if no types found in main module
- [ ] CLI: Add option to automatically bundle `@:jsRequire()` so a separate bundler isn't required. Maybe a we could use a macro for this
    - Either:
        - bake into the externs
        - include a macro that bundles at compile-time
- [ ] Copy printer improvements to haxe standard library
- [ ] :star2: **1.0 Release**

# FAQ

- Should I publish generated types to haxelib?

    Ideally dts2hx replaces the need to install externs from haxelib, however if the generated externs are not perfect and require manual fixups you may want to publish a curated version to haxelib. Before you do that please consider opening an issue here noting the fixup required instead – it would be better if dts2hx converted more modules perfectly

- What makes this different from previous approaches?

   The idea of generating Haxe externs from `.d.ts` files is not new, [ts2hx](https://github.com/Simn/ts2hx) for instance was started 5 years ago already. However, this turned out to not be viable because it implemented a TypeScript parser in Haxe. The maintenance effort required turned out to be too great since TypeScript is evolving quickly.

   This project takes the _opposite_ approach and hooks into the TypeScript compiler API, which simplifies future maintenance a lot.
