- Determine @:native() and @:js.Require **not** from parents by from exploring out from the index typing file
	- What about multiple files? (not allowed in package.json, but theoretically how should this work?)
	- Maybe start with the root file and then handle non-touched files differently?
	- Or _require_ a single file
	- Do any modules not have a single root in practice?

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

- declare namespace vs declare module

- explore the top-level, determine what to do with each symbol