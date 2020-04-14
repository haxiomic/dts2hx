- getTypePath should not return a TypePathDecl, it should return a new type of object
	- Should add extra field, inHaxeStdLib: Bool, so we know not to queue this symbol
- Should generate name and pack together

- What if we used macros for Union, Tuple etc?
-> Generic build macro, adds to complexity but we could do it
-> `Union<['a', 'b']>`, doesn't work because TP must be a constant
-> `Tuple<[T1, T2]>`, doesn't work ^

- typeNodeToComplexType should also return support types required
	- Support types should always be emitted in the same module as the type reference
	- Have a deterministic, order-free name so we can deduplicate
		`A | B` and `B | A` -> `EitherAOrB`
	- Maybe we can add an extra field `_supportType` to the TypeDefinition

- Handle nullable types
	? Check for union with null?

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
