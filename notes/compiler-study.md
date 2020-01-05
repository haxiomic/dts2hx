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

## Notes
- See [src/compiler/utilities.ts](https://github.com/microsoft/TypeScript/blob/d6c05a135840dc3045ec8f3bbec1da5ffabb6593/src/compiler/utilities.ts) for compiler API use examples
- See [src/compiler/vistorPublic.ts](https://github.com/microsoft/TypeScript/blob/master/src/compiler/visitorPublic.ts) for an example of fully enumerating the AST