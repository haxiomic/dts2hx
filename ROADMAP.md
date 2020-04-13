- Move getSourceFileModuleName and moduleDependencies to SymbolAccessMap

- ValueModules and (classes, interfaces, enum) should be merged; symbols should be an array
	- Typedef can be replaced with an abstract, but this adds some complexity
	```@:forward @:forwardStatics extern abstract T(X) to X from X```
	- Do we ever need to split into multiple modules then?
	-> No

- ValueModule classes
	- Pixi and PIXI module class, creates file overwrite
		- Need to check case insensitive
		- Maybe add Module to module name?
		- Merge fields

- Should we have Global.hx per-package or just one?

- Callable classes with @:selfCall
	https://haxe.org/manual/target-javascript-external-libraries.html

- Enums:
	- Generate method to get keys
	- Support array access

- typeNodeToComplexType should also return support types required
	- Support types should always be emitted in the same module as the type reference
	- Have a deterministic, order-free name so we can deduplicate
		`A | B` and `B | A` -> `EitherAOrB`
	- Maybe we can add an extra field `_supportType` to the TypeDefinition

- TypeConversion: Type references
	- Convert inaccessible types (grow `inaccessibleTypeQueue`)


- How do we handle external lib references like jquery and sizzle
	- Ideally the output would be
		jquery/
			Jquery.hx
		sizzle/
			Sizzle.hx
- Module classes (empty)
- Start on typeToComplex type

- **Command Line Interface**
	- Created a file named test.d.ts in same directory as cli.js, didn't find it unless it was in a sub-directory
	- maybe check for .d.ts at end and remove when doing module search

- babylon d.ts is borked to heck. It defines the same classes into multiple modules, only a few of which actually exist. Each module generates a type that currently has the same package as the others, so they overwrite each other (and it's not clear the correct one is left)
	-> Could prefix the package path with the root module and remove duplicates

- Minor: maybe a compiler option so that it doesn't lib-wrap the directory, allowing you to just use a class-path rather than adding -lib for each dependency
