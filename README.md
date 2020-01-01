# WIP .d.ts to .hx



Hi, this is a work in progress TypeScript Definition to Haxe Extern converter. It's not yet ready to use but much of the groundwork has been laid.

I don't have the bandwidth available to progress it in the short term so I've made the repo public to help anyone else who's also working towards a `.d.ts` -> `.hx` converter.

It currently outputs the basic structures (not as valid haxe) using [these methods](src/ExternGenerator.ts#L296). The main part of the remaining work is to fill out these methods by exploring type information contained in the `ts.Symbol`. I think it's best to write this part in haxe so you can use the haxe syntax printer. In addition, we will need to remap type names like `WebGLRenderingContext` to haxe paths like `js.html.webgl.RenderingContext`. For this, I think it's best to use a haxe macro to explore all the types in `js.*` and extract their `@:native` metadata to create a lookup table.

The ultimate aim is to be able to do something like `dts2hx install @types/three` and have it pull definitions from DefinitelyTyped and convert them to haxe. To enable this to be reliable there needs to be a focus on fully handling all possible ts type expressions and edge cases (see [test-definitions/edge-cases/index.d.ts](test-definitions/edge-cases/index.d.ts)).

<img src="https://user-images.githubusercontent.com/3742992/71644204-854b4d80-2cbc-11ea-85f9-93c63df51fe3.png" height="24" align="left"> Thanks to the Haxe Foundation for supporting this project

# Getting Started
- Run `npm install` to download the dependencies (ts compiler)
- Run `npm start` to build and run the experimental test example
- The target type definitions are specified in [src/index.ts](src/index.ts#L56)
- To rebuild and run interactively, run `npm run watch-run`

# Roadmap
- [ ] First pass conversion of TypeScript compiler externs (written in ts)
    - [x] Generate modules from symbols
    - [ ] Basic conversion of fundamental types **← currently working on this**
        - [x] Enums
        - [x] Primitives
        - [x] Type references
        - [ ] TypeLiteral types (objects literals)
        - [ ] Unions with EitherType
        - [ ] Functions types
    - [ ] Classes
        - [ ] Constructors
        - [ ] Implements, extends etc
    - [x] Typedef
- [ ] Rewrite in haxe using generated TypeScript compiler externs
- [ ] Resolve how we handle modules vs ambient declarations in terms import metadata like `@:jsRequire`
    - three.js uses only module `export`s, but is often used as ambient – maybe we #if guard the @:jsRequire to allow disabling
    - babylon.js and many other project use both, do we merge or just parse as-is?
- [ ] Complete translation of trivially haxe compatible types (and `:Any` for others)
- [ ] Automatically handle remapping of js built-in and DOM types to haxe std js externs
- [ ] Command-line interface
    - [ ] Convert local `.d.ts` files
- [ ] **Prelease** Not perfect but practically useable
- [ ] First pass of compatibility layer for incompatible types
    - [ ] Generate `abstract`s to support unnamed enums and improve type unions
    - [ ] *flesh out this roadmap*
- [ ] Command-line interface improvements
    - [ ] Automatically pull `.d.ts` files from DefinitelyTyped and npm @types
    - [ ] `dts2hx install three.js` works
- [ ] **1.0 Release**
- [ ] Systematize compatibility tweaks to make it easier for others to contribute
    - [ ] Contribution documentation
- [ ] *maybe*: If tweaking flags are necessary to get the best output for certain libraries then use a github registry of config files to store these tweaks

# FAQ
- Why is it written in TypeScript instead of haxe?

    It interfaces heavily with the TypeScript compiler so it's helpful to have access to the TS compiler definitions. If we can convert the TS compiler definitions to haxe then it would make sense to write it fully in haxe :)

- What makes this different from previous approaches?

   The idea of generating Haxe externs from `.d.ts` files is not new, [ts2hx](https://github.com/Simn/ts2hx) for instance was started 5 years ago already. However, this turned out to not be viable because it implemented a TypeScript parser in Haxe. The maintenance effort required turned out to be too great since TypeScript is evolving quickly.

   This project takes the _opposite_ approach and hooks into the TypeScript compiler API, which simplifies future maintenance a lot.

Useful tool to help understand the TS AST https://ts-ast-viewer.com/