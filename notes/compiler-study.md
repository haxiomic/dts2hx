# TypeScript Compiler Study

## Documentation Links
- [TypeScript AST Viewer](https://ts-ast-viewer.com/)
- [Architectural-Overview](https://github.com/microsoft/TypeScript/wiki/Architectural-Overview)
- [Using the type checker](https://github.com/microsoft/TypeScript/wiki/Using-the-Compiler-API#using-the-type-checker)
- [Language Specification](https://github.com/microsoft/TypeScript/blob/master/doc/spec.md)

## Concepts
- **Declaration** - Declarations can assign a name to a *type*, *value* and *namespace*. A single name may have be used for all of these
- **Symbol** - After parsing, a **'binding'** step applied to the AST collects named declarations that contribute to the same structure into Symbols. Symbols are used as the basis for conversion rather than the AST
- **Type Categories**
    - primitive types
    - object types
    - union types
    - intersection types
    - type parameters