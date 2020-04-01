- Need to check we're not converting the same symbols twice
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

- jsRequire **or** @:native, not both
- pixi.js defines both an ambient module require("pixi.js") _and_ a global module "PIXI"
	-> This probably requires generating two independent set of definitions, one with jsRequire and the other with @:native`
	-> Maybe prefix with global/
		```
		pixi.js/
			global/
				PIXI.hx
			PIXI.hx
		```
	-> Or generate two libraries
		pixi.js-modular/
			PIXI.hx
		pixi.js-global/
			PIXI.hx

- _Maybe_ we should determine moduleId from entryPointFilePath rather than providing both
- require('moduleId', name-of-export-from-entry)
- If entry point is exported as a named module, we create a module class and add typedefs, so THREE.Quaternion works

- How do /// referenced types and libs work?
	- How do we get the require() correct
	

- Implement get-generate for type-symbols
	- Type path from parent does not work! See three.js Quaternion
		- technically we probably can do import "three/src/math/Quaternion", we lose connection to the parent THREE module because it's in another file
		```typescript
		export * from './math/Quaternion';
		export as namespace THREE;
		```
		- What should the package be for Quaternion.hx?
		- Should it be 'math/Quaternion.hx' derived from root parent source file
		- Or should it be three.Quaternion, as determined by exploring the symbol tree
		=> probably 'math/Quaternion.hx' and a typedef in a module class named THREE.hx
		```haxe
		// THREE.hx
		typedef Quaternion = math.Quaternion;
		```
		=> So `export * from './math/Quaternion'` should translate to typedefs in a module class

- How will symbol referencing work with the recursive decent pattern?
	- If a type is referenced by not yet generated, how do we know the path
		Idea 1: Because paths are always deterministic given a symbol

		Idea 2: We could get-generate symbols
			- Risk of loops and order issues, like a child referencing a parent not yet complete

- How do we queue up types to convert?
	- For example, we discover we need to generate externs for a dom type

- Produce module structure
	- Create directories
	- Empty hx file for module classes