- Why so many typescript errors with `chakra-ui`?

- Redesign so that we supply a bunch of input modules and ConverterContext returns output modules, which may include new dependencies
	- Creating a fresh context per module loses inter-module interaction (see express)

- New flag --mergeGlobal: `@:jsRequire` + `@:native` rather than `global`
	```haxe
	for (a in access) {
		generateHaxeModulesFromSymbol(symbol, access)
	}
	```
	To
	```haxe
	generateHaxeModulesFromSymbol() {
		// prefer module path for access path
		for(a in access) {
			meta.push(a.toMeta()) // with #if conditional
		}
	}
	```

	See https://github.com/kLabz/haxe-react/blob/c1b68ec990ec5bef5d818e8b9837edcad8c70141/src/lib/react/React.hx#L13-L16

- Issue: This should be `var _50: String;`
	```haxe
	@:native("50")
	var FiveZero : String;
	```
- Issue: maybe when converting the typename `_` the result should be `Underscore` not `T_`

- Issues:
	- export default not working properly
	- `require('vue').default` doesn't exist

- Issue: could not find local file reference module in the cwd: e.g. `dts2hx ./scratch`

- Filter out Void `AnyOf2<Void, T>`?
	https://github.com/francescoagati/haxe-ts-repository/blob/master/externs/use-immer/use_immer/Reducer.hx

- Create alternative field for redefined class and interface fields (if type is not same)

- Complete validation

---- Tests should compile

- Constructor comments missing from pixi.js

- Class and interface extend handling, add override etc
	- Need to check where extending / intersection is allowed

- Interface splitting
	- Classes **must** unify with interfaces, so interface must have all the same fields as the class
		- This has implications for `class extends` and `interface extends`

- Intersection Types
	- `function intersectionBetweenTypeParams<A, B>(p: A & B): void;` -> `p: { }` ??
	- If a type has index signatures, rasterize?

- Index signatures
	- Haxe compiler feature requests
	- Add `@:indexSignature` metadata
		- `@:indexSignature function get(index: K): V`
		- `@:indexSignature function set(index: K, value: V): V`
	- Or maybe `{ > ArrayAccess<T> }`? (ArrayAccess is currently an interface in haxe)
	- Eh..., just rasterize the types with index signatures and wrap in abstracts

- Handle callable classes
	- symbol.flags & SymbolFlags.Function != 0
	- play well with other call signatures (also from construct type)
	-> `@:selfCall` on new() https://github.com/HaxeFoundation/haxe/issues/3441 

- Lots of array extensions, can we do better here?

- `getTopLevelDeclarationSymbols` sucks, can we use alternative methods now? Why does it exist?

- Should we convert all `const Name: T;` fields to classes rather than global variables?
	-> Probably, what about `var Name: T;`? I think so.

- Use macro to call complexType methods with type-stack pushing?
	- Maybe use macro to enable finally

- **react+react-dom have issues**

- Playcanvas, why 
	`Warning: Type has construct signature but this is currently unhandled ([Object] ScriptType [Class] ClassDeclaration /Users/geo/Projects/dts2hx/test/libs/node_modules/playcanvas/build/output/playcanvas.d.ts:22545:5)`
	When the type is a class?

- Issue: `dts2hx three/examples/jsm/controls/orbitcontrols` fails at runtime because casing is incorrect. Need to use the resolved module name instead of the input name in jsRequire

- Printer, better function printing:
	- don't set singleLineFields on function args
	- set it on function signatures, check if resulting line length > x
	- if > x, re-print with multiLineFields

- Issue: struct/function formatting problems in Typescript.hx

- Issue: toSafeIdent(), result can be just `_` which has special meaning in haxe

- Automatically find tsconfig.json in convertTsModule()

- Enums:
	- Generate method to get keys
	- Support array access

- Construct signatures on anons
A generic build version of this would work
```haxe
	@:forward @:forwardStatics extern abstract ConstructType<T>(T) to T from T {

		public inline function construct(args: Array<Dynamic>): Any {
			return Type.createInstance(cast this, args);
		}

	}
```

- Special types
	- ts.lib.IFunction should map to haxe.constrains.Function I think

- Use subtypes for typedef anons (so it's not an anon repreated 3x)
	- i.e. `abstract Name({...}) to {...} from {...} { }`

- haxe 4.2, quoted names in types instead of @:native()

- Do we need to do anything to handle `abstract` classes (typescript keyword abstract)?

- ? Maybe: When shortening paths, do we need to check for collisions with haxe root types? (like Iterator)

- Docs: wtf is going on with `IHTMLTimeElement`
- Overload documentation, requires extending MetadataItem with doc field
	- Will need to copy / reimplement jsdoc methods from services.ts

- Review class-expression syntax `let x = class ...`

- If a constructor type is a type parameter we can use `Constructible`

------

**haxe on npm**
- npm haxe version should exactly always match haxe compiler version
	- e.g. `npm install haxe 4.0.5` should do exactly that
	- Should include prebuilt binaries / download based on arch after install
	- This is annoying because we can never reuse the same name/version on npm (may need to get in touch with npm admins?)
		- We can unpublish specific old versions by contacting `support@npmjs.com` and replace them with a shim to new version so they will still work
		- We could leave all the other versions up unchanged
		- This is a big change but I think it's worth it.
	- npm publish should be an automatic part of haxe release process
- haxe lib directory set to node_modules/@haxe
- install haxe libraries with the @haxe namespace prefix
- `npm install @haxe/openfl`

-> For this we just need two changes to the existing npm-haxe
	- download the haxe version that matches the package version by default
	- set the haxelib directory to node_modules/@haxe

- Then establish a convention of naming modules @haxe/$name.
- Should also have 0 dependencies, npm-haxe installs *168*

! Biggest problem is the haxelib .current convention, so maybe we can't use @haxe?
! Also making @haxe org access public might be hard.
- Use a shim, so that when haxe or haxelib are called, we first setup the haxelib directory with symlinks to dependencies in package.json
	- What happens when a dependency requires others via package.json?
		-> we need to symlink these too
		-> So basically symlink everything in `node_modules`
			! this is expeennsiiiiive, probably only a small minority will be haxe modules
			? check for haxelib.json...? ehhh
	=> What if we scan the dependencies for hx files, then cache the results in a text file so we know if we need to re-run this process
	

- How do you install haxe 4.0.5 with npm-haxe? Not clear so far

- Binaries should be hosted on npm, so for example `npm install haxe` on mac installs `@haxe/haxec-darwin@4.2.0` as a dependency