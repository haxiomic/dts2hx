# TypeScript Compiler Study

## Documentation Links
- [TypeScript AST Viewer](https://ts-ast-viewer.com/)
- [Architectural-Overview](https://github.com/microsoft/TypeScript/wiki/Architectural-Overview)
- [Using the type checker](https://github.com/microsoft/TypeScript/wiki/Using-the-Compiler-API#using-the-type-checker)
- [Language Specification](https://github.com/microsoft/TypeScript/blob/master/doc/spec.md)
- [Compiler Internals Book](https://basarat.gitbooks.io/typescript/docs/compiler/overview.html)

## Concepts
- **Declaration** - Declarations can assign a name to a *type*, *value* and *namespace*. A single name may have be used for all of these
- **Symbol** - After parsing, a **'binding'** step applied to the AST collects named declarations that contribute to the same structure into Symbols. Symbols are used as the basis for conversion rather than the AST
- **Type Categories**
    - primitive types
    - object types
    - union types
    - intersection types
    - type parameters

- **Namespaces** – Two kinds, type-only namespaces ("non-instantiated") and namespaces that contain values
    -> type-only namespaces map to haxe packages
    -> if values are in a namespace we need a class with static fields to host them
    We could map namespaces to packages or files
        ie. namespace X {
            type Y = string;
            const Z: string;
        }
        ->
        X.hx
            class X {
                static final Z: String;
            }

            type Y = String;
    But this doesn't handle nesting well, so use X.hx for namespaces values and x/ for namespace types
    - Namespaces can have nested names: `namespace X.Y.Z {}`
    - Declarations within a namespace that have `export` can be thought of as public, declarations without are private to that namespace. In practice this is difficult to enforce in haxe so all declarations will likely be made public

## Notes
- See [src/compiler/utilities.ts](https://github.com/microsoft/TypeScript/blob/d6c05a135840dc3045ec8f3bbec1da5ffabb6593/src/compiler/utilities.ts) for compiler API use examples
- See [src/compiler/vistorPublic.ts](https://github.com/microsoft/TypeScript/blob/master/src/compiler/visitorPublic.ts) for an example of fully enumerating the AST
- `module` keyword ==> `namespace` (and is different from a module in the import/export sense)