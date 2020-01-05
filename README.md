# WIP .d.ts to .hx

Hi, this is a work in progress TypeScript Definition to Haxe Extern converter that uses the typescript compiler. It's not yet ready to use but much of the groundwork has been laid

The ultimate aim is to be able to do something like `dts2hx install @types/three` and have it pull definitions from DefinitelyTyped and convert them to haxe. To enable this to be reliable there needs to be a focus on fully handling all possible ts type expressions and edge cases (see [test-definitions/edge-cases/index.d.ts](test-definitions/edge-cases/index.d.ts))

<img src="https://user-images.githubusercontent.com/3742992/71644204-854b4d80-2cbc-11ea-85f9-93c63df51fe3.png" height="24" align="left"> Thanks to the Haxe Foundation for supporting this project!

# Getting Started
- Run `npm install` to download the dependencies (ts compiler)
- Run `npm start` to build and run the experimental test example
- The target type definitions are specified in [src/index.ts](src/index.ts#L56)
- To rebuild and run interactively, run `npm run watch-run`

# Roadmap
- [ ] First pass conversion of TypeScript compiler externs (written in ts)
    - [x] Generate modules from symbols
    - [x] Basic conversion of fundamental types
        - [x] Enums
        - [x] Primitives
        - [x] Type references
        - [x] TypeLiteral types (objects literals)
        - [x] Unions with EitherType
        - [x] Function types
        - [x] Type parameters
        - [x] Index signatures
        - [x] Intersection types `need better handling of redefined properties, aka sub intersections`
        - [x] Tuple types
        - [x] This type
        - [x] Overloads
        - [x] Wrapped types
    - [x] Classes and interfaces
        - [x] Constructors
        - [x] Index signatures (both class and interfaces)
        - [x] Extends
    - [x] Typedef
    - [x] Print type source location in documentation
    - [x] Fix reference to `ReadonlyArray` in `WriteFileCallback`
    - [ ] Fix differences in type from type query
        - [ ] @:overload lost, type referenced are followed (see `unit/Types.object` vs `unit/Types.typeQueryObject`)
    - [x] Unify type parameter handling; constraints are ignored for class type parameters
    - [x] Wrong type parameter is found in class extends
    - [ ] Remove redefinitions of extending class fields
- [ ] Rewrite in haxe using generated TypeScript compiler externs **← currently working on this**
    - [ ] Resolve how we handle modules vs ambient declarations in terms import metadata like `@:jsRequire`
        - three.js uses only module `export`s, but is often used as ambient – maybe we #if guard the @:jsRequire to allow disabling
        - babylon.js and many other project use both, do we merge or just parse as-is?
    - [ ] Remove type-path prefix if referencing type within the same module
- [ ] Automatically handle remapping of js built-in and DOM types to haxe std js externs
- [ ] Command-line interface
    - [ ] Convert local `.d.ts` files
- [ ] :star: **Prelease** *Not perfect but practically useable*
- [ ] Advanced type conversions
    - [ ] Abstracts to support unnamed enums and improve type unions
    - [ ] Support enum subsets; example from ts compiler: `type ModifierSyntaxKindEnum = Modifiers['kind']`;
    - [ ] Maybe function argument unions could be improved by overloads?
    - [ ] Abstracts to implement Tuples (named fields for array indexes)
    - [ ] Generate externs for built-in types that aren't in the haxe standard library yet
    - [ ] Extract hints from JSDoc like @nosideeffects -> @:pure (See also https://github.com/google/closure-compiler/wiki/Annotating-JavaScript-for-the-Closure-Compiler)
    - [ ] Use abstracts to support interfaces and structures with index signatures _and_ fields
- [ ] Command-line interface improvements
    - [ ] Automatically pull `.d.ts` files from DefinitelyTyped and npm @types
    - [ ] `dts2hx install three.js` works
- [ ] :star2: **1.0 Release**
- [ ] Systematize compatibility tweaks to make it easier for others to contribute
    - [ ] Contribution documentation
- [ ] Unit tests
- [ ] Cleaner output
    - [ ] Replace full type references with imports for some types (like haxe.extern.EitherType)
- [ ] *maybe*: If tweaking flags are necessary to get the best output for certain libraries then use a github registry of config files to store these tweaks

# FAQ
- Why is it written in TypeScript instead of haxe?

    It interfaces heavily with the TypeScript compiler so it's helpful to have access to the TS compiler definitions. If we can convert the TS compiler definitions to haxe then it would make sense to write it fully in haxe :)

- What makes this different from previous approaches?

   The idea of generating Haxe externs from `.d.ts` files is not new, [ts2hx](https://github.com/Simn/ts2hx) for instance was started 5 years ago already. However, this turned out to not be viable because it implemented a TypeScript parser in Haxe. The maintenance effort required turned out to be too great since TypeScript is evolving quickly.

   This project takes the _opposite_ approach and hooks into the TypeScript compiler API, which simplifies future maintenance a lot.

Useful tool to help understand the TS AST https://ts-ast-viewer.com/
