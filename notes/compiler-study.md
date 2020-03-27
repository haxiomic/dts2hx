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
    ```typescript
    var X: string;    // Value named X

    type X = number;  // Type named X

    namespace X {     // Namespace named X  
        type Y = string;  
    }

    // all 3 declarations contribute to the Symbol 'X'
    ```
    - Notes on SymbolFlags
        https://github.com/microsoft/TypeScript/blob/0ae938b718bae3367bff26369adac1ecef56f212/src/compiler/types.ts#L4007
        https://github.com/microsoft/TypeScript/blob/0ae938b718bae3367bff26369adac1ecef56f212/src/compiler/binder.ts#L299

- **Type Categories**
    - primitive types
    - object types
    - union types
    - intersection types
    - type parameters

- **Namespaces** – Two kinds, type-only namespaces ("non-instantiated") and namespaces that contain values
    - `SymbolFlags.ValueModule` Instantiated module
    - `SymbolFlags.NamespaceModule` Uninstantiated module
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

- **Modules** vs **Namespaces** and **"External Modules"**
    - The form `declare module Name` is deprecated and equivalent to `declare namespace Name`. This creates an ambient namespace
    - The correct use of `declare module` is with quotes: `declare module "name"`. This declares an **external** (ES6 module)
    - "In TypeScript, just as in ECMAScript 2015, any file containing a top-level import or export is considered a module. Conversely, a file without any top-level import or export declarations is treated as a script whose contents are available in the global scope (and therefore to modules as well)." https://www.typescriptlang.org/docs/handbook/modules.html
    - https://stackoverflow.com/questions/41932585/what-is-the-difference-between-declare-namespace-and-declare-module
    - See https://stackoverflow.com/questions/32531405/why-does-importing-a-node-module-break-my-internal-typescript-namespaces-in-atom

## Notes
- See [src/compiler/utilities.ts](https://github.com/microsoft/TypeScript/blob/d6c05a135840dc3045ec8f3bbec1da5ffabb6593/src/compiler/utilities.ts) for compiler API use examples
- See [src/compiler/vistorPublic.ts](https://github.com/microsoft/TypeScript/blob/master/src/compiler/visitorPublic.ts) for an example of fully enumerating the AST
- `module` keyword ==> `namespace` (and is different from a module in the import/export sense)