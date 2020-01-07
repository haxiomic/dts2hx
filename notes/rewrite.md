- Answer .escapedText vs .text?
- Review NodeBuilderFlags, seems like some of these will be very useful
- Interfaces should be structures, however be aware that some might extend other standard lib interfaces
    - Must resolve how to handle array access given all interfaces are structures and we can no longer do implements ArrayAccess
    - Maybe requires compiler support for this
    - Alternatively haxe extern interfaces are made more flexible to allow unifying with regular structures and supporting @:optional
- Use recursive decent rather than global symbol walk
- Review use of .valueDeclaration instead of enumerating all declarations for a symbol
    - See function overloads
- Maybe we can use a transformer pre-pass to simplify tricky parts of the AST: https://43081j.com/2018/08/creating-a-typescript-transform
- Use node.js api rather than haxe std so we don't have a dependence on -lib hxnodejs

- Generic build macro to handle either types:
    `A | B` -> `AnyOf<A, B>`

- How are Partial<T> and friends handled?
    - We could evaluate it, or maybe use the Partial macro

- Compiler change proposals
    - Support @:arrayAccess fields on extern structs and interfaces (to enable index signatures)
    - More flexible extern interfaces:
        - Support @:optional
        - Unify with structs
        - @:arrayAccess fields