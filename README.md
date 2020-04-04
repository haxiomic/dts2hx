# WIP .d.ts to .hx

Hi, this is a work in progress TypeScript Definition to Haxe Extern converter that uses the typescript compiler. It's not yet ready to use but much of the groundwork has been laid

The ultimate aim is to be able to do something like `dts2hx three --install` and have it pull definitions from DefinitelyTyped and convert them to haxe. To enable this to be reliable there needs to be a focus on fully handling all possible ts type expressions and edge cases (see [test-definitions/edge-cases/index.d.ts](test-definitions/edge-cases/index.d.ts))

<img src="https://user-images.githubusercontent.com/3742992/71644204-854b4d80-2cbc-11ea-85f9-93c63df51fe3.png" height="24" align="left"> Thanks to the Haxe Foundation for supporting this project!

# Getting Started
- **be aware, it's currently just for exploration and not ready to use as a tool**
- requires haxe > 4.0.5
- install dts2hx in your local project as a development dependency:

    `npm install https://github.com/haxiomic/dts2hx --save-dev`
- install a node module with types, e.g. `npm install three` 
- run dts2hx on the node module `npx dts2hx three`
- alternatively, generate externs for all local node dependencies with `npx dts2hx --all`
- (generated externs are not ready to use yet)

# Roadmap
- [x] First pass conversion of TypeScript compiler externs (written in ts)
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
    - [x] Remove redefinitions of extending class fields
- [ ] Rewrite in haxe using generated TypeScript compiler externs
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
    - [ ] Basic conversion of fundamental types **← currently working on this**
        - [x] Enums
        - [ ] Primitives
        - [ ] Type references
        - [ ] TypeLiteral types (objects literals)
        - [ ] Unions with EitherType
        - [ ] Function types
        - [ ] Type parameters
        - [ ] Index signatures
        - [ ] Intersection types `need better handling of redefined properties, aka sub intersections`
        - [ ] Tuple types
        - [ ] This type
        - [ ] Overloads
        - [ ] Wrapped types
    - [ ] Classes and interfaces
        - [ ] Constructors
        - [ ] Index signatures (both class and interfaces)
        - [ ] Extends & implements
    - [ ] Automatically handle remapping of js built-in and DOM types to haxe std js externs
    - [ ] Remove type-path prefix if referencing type within the same module
    - [x] Generate readme with dtshx version, typescript version, commit and input commands for reproducibility
    - [x] Generate a haxelib.json file
    - [x] Determine dependencies (like jquery -> sizzle) and add to haxelib.json
- [x] Command-line interface
    - [x] Convert local `.d.ts` files
    - [ ] Add `--install` option
- [ ] :star: **Prelease** *Not perfect but practically useable*
- [ ] Advanced type conversions
    - [ ] Abstracts to support unnamed enums and improve type unions
    - [ ] Support enum subsets; example from ts compiler: `type ModifierSyntaxKindEnum = Modifiers['kind']`;
    - [ ] Maybe function argument unions could be improved by overloads?
    - [ ] Abstracts to implement Tuples (named fields for array indexes)
    - [ ] Generate externs for built-in types that aren't in the haxe standard library yet
    - [ ] Extract hints from JSDoc like @nosideeffects -> @:pure (See also https://github.com/google/closure-compiler/wiki/Annotating-JavaScript-for-the-Closure-Compiler)
    - [ ] Use abstracts to support interfaces and structures with index signatures _and_ fields
- [ ] :star2: **1.0 Release**
- [ ] Systematize compatibility tweaks to make it easier for others to contribute
    - [ ] Contribution documentation
- [ ] Unit tests
- [ ] Cleaner output
    - [ ] Replace full type references with imports for some types (like haxe.extern.EitherType)
    - [ ] *maybe*: If a package only has one type with the same name as package, replace with a module. For example:
        `babylonjs.cameras.inputs.freecameragamepadinput.FreeCameraGamepadInput` -> `babylonjs.cameras.inputs.FreeCameraGamepadInput`
- [ ] *maybe*: If tweaking flags are necessary to get the best output for certain libraries then use a github registry of config files to store these tweaks

# FAQ

- Should I publish generated types to haxelib

    Ideally dts2hx replaces the need to install externs from haxelib, however if the generated externs are not perfect and require manual fixups you may want to publish a curated version to haxelib. Before you do that please consider open an issue here noting the fixup required instead – it would be better if dts2hx converted more modules correctly instead of polluting the haxelib namespace with js externs

- What makes this different from previous approaches?

   The idea of generating Haxe externs from `.d.ts` files is not new, [ts2hx](https://github.com/Simn/ts2hx) for instance was started 5 years ago already. However, this turned out to not be viable because it implemented a TypeScript parser in Haxe. The maintenance effort required turned out to be too great since TypeScript is evolving quickly.

   This project takes the _opposite_ approach and hooks into the TypeScript compiler API, which simplifies future maintenance a lot.

Useful tool to help understand the TS AST https://ts-ast-viewer.com/
