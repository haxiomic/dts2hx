- Tuple type references and review the following
```typescript
/**
* Type references (ObjectFlags.Reference). When a class or interface has type parameters or
* a "this" type, references to the class or interface are made using type references. The
* typeArguments property specifies the types to substitute for the type parameters of the
* class or interface and optionally includes an extra element that specifies the type to
* substitute for "this" in the resulting instantiation. When no extra argument is present,
* the type reference itself is substituted for "this". The typeArguments property is undefined
* if the class or interface has no type parameters and the reference isn't specifying an
* explicit "this" argument.
*/
```

- typeNodeToComplexType should also return support types required
	- Support types should always be emitted in the same module as the type reference
	- Have a deterministic, order-free name so we can deduplicate
		`A | B` and `B | A` -> `EitherAOrB`
	- Maybe we can add an extra field `_supportType` to the TypeDefinition

- Handle nullable types

- TypeConversion: Type references
	- Convert inaccessible types (grow `declarationSymbolQueue`)

- Global.hx
	- Should we have Global.hx per-package or just one?

- Review class-expression syntax `let x = class ...`

- Callable classes with @:selfCall
	https://haxe.org/manual/target-javascript-external-libraries.html

- Enums:
	- Generate method to get keys
	- Support array access


- **Command Line Interface**
	- Created a file named test.d.ts in same directory as cli.js, didn't find it unless it was in a sub-directory
	- maybe check for .d.ts at end and remove when doing module search

- babylon d.ts is borked to heck. It defines the same classes into multiple modules, only a few of which actually exist. Each module generates a type that currently has the same package as the others, so they overwrite each other (and it's not clear the correct one is left)
	-> Could prefix the package path with the root module and remove duplicates

- Minor: maybe a compiler option so that it doesn't lib-wrap the directory, allowing you to just use a class-path rather than adding -lib for each dependency
