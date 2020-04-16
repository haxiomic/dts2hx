- Fields
	- Class fields
	- Class static fields
	- Typedef static fields
	- Enum static fields
	- ValueModule fields

- Missing type parameters in Map.hx
- Review what's going on with @:native('__@iterator') is this correct?
	-> Probably not, should it be `[Symbol.iterator]`

- Global.hx
	- Should we have Global.hx per-package or just one?


- Review `export declare` in @actions/core
- node_modules/@actions -> atactions

- getDoc should account for the relevant declaration – see `node/fs/ReadFile.hx`, doc is duplicated

- Add a compiler option so that it doesn't lib-wrap the directory, allowing you to just use a class-path rather than adding -lib for each dependency

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
