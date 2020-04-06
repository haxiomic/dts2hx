- If a type is renamed, i.e. `Url` -> `Url_` how do we ensure all type references are correct later?
	- Maybe we need a _second_ pass like access map to generate a haxe name / path map
		- This is more difficult because many symbols are only discovered after type references
	-> Use a custom printer that checks for specially marked type-paths, maybe {
		pack,
		name,
		_symbol,
	} and resolves them by checking a symbol map of haxe generated types

	! We need a deterministic way to solve name collisions, so that when we reference an external module it will solve the same way
		-> Determine a name for _all_ symbols upfront

- Why is `class URL` exposed from url.d.ts and not `interface Url`?
	- Either way the type will need to be generated because it's probably referenced as a type

- ValueModule classes
	- Path names need fixing
		- Overwriting
		- Other weirdness
	- Pixi and PIXI module class, creates file overwrite
		- Need to check case insensitive
		- Maybe add Module to module name?
		- Merge fields


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

- babylon d.ts is borked to heck. It defines the same classes into multiple modules, only a few of which actually exist. Each module generates a type that currently has the same package as the others, so they overwrite each other (and it's not clear the correct one is left)
	-> Could prefix the package path with the root module and remove duplicates

- Minor: maybe a compiler option so that it doesn't lib-wrap the directory, allowing you to just use a class-path rather than adding -lib for each dependency