- Complete validation

---- Tests should compile

- Class and interface extend handling, add override etc
	- Need to check where extending / intersection is allowed
	- Class extends should not `preferInterfaceStructure`, what else?

- Interface splitting
	- Classes **must** unify with interfaces, so interface must have all the same fields as the class
		- This has implications for `class extends` and `interface extends`

- Intersection Types
	- `function intersectionBetweenTypeParams<A, B>(p: A & B): void;` -> `p: { }` ??
	- If type is in the haxe standard library, it is not intersectable.
	- If a type has index signatures, rasterize

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

- Lots of array extensions, can we do better here?

- `getTopLevelDeclarationSymbols` sucks, can we use alternative methods now? Why does it exist?

- Playcanvas, why 
	`Warning: Type has construct signature but this is currently unhandled ([Object] ScriptType [Class] ClassDeclaration /Users/geo/Projects/dts2hx/test/libs/node_modules/playcanvas/build/output/playcanvas.d.ts:22545:5)`
	When the type is a class?

- Printer, better function printing:
	- don't set singleLineFields on function args
	- set it on function signatures, check if resulting line length > x
	- if > x, re-print with multiLineFields

- Formatting issues in Typescript.hx

- Issue: Global.hx, multiple root Global.hx's will override each other

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

- Understand
? `tc.getBaseTypeOfLiteralType()` for literals?
? `tc.getBaseConstraintOfType(type)`
? `getBaseTypes(type:InterfaceType):Array<typescript.ts.BaseType>`
? `tc.getWidenedType()`
? `getApparentType()`
? could use `tc.getNonNullable` type instead of unwrap null
? `getRootSymbols()`

- If a symbol is both a class and interface, we could split into a class implementation and an interface implementation, and then select the correct type when referencing by context: if used in implements, then use interface version 

- Use subtypes for typedef anons (so it's not an anon repreated 3x)
	- i.e. `abstract Name({...}) to {...} from {...} { }`

- Do we need to do anything to handle `abstract` classes (typescript keyword abstract)?

- ? Maybe: When shortening paths, do we need to check for collisions with haxe root types? (like Iterator)

- Docs: wtf is going on with `IHTMLTimeElement`
- Overload documentation, requires extending MetadataItem with doc field
	- Will need to copy / reimplement jsdoc methods from services.ts

- Three.hx could have type aliases, or not be generated since it's empty
	- Maybe we don't want to ignore Export * symbols in `walkDeclarationSymbols`

- Review class-expression syntax `let x = class ...`

- If a constructor type is a type parameter we can use `Constructible`

- **Command Line Interface**
	- Created a file named test.d.ts in same directory as cli.js, didn't find it unless it was in a sub-directory
	- maybe check for .d.ts at end and remove when doing module search

- babylon d.ts is borked to heck. It defines the same classes into multiple modules, only a few of which actually exist. Each module generates a type that currently has the same package as the others, so they overwrite each other (and it's not clear the correct one is left)
	-> Could prefix the package path with the root module and remove duplicates

- Open haxe printer bug
```haxe
// this is a single field, the object has crappy printing
static var typeQueryObject : { var fieldA : Float; var fieldB : Float; var fieldArrayAlias : Array<String>; @:optional
var fieldOptional : Null<Float>; @:native("macro")
var macro_ : String; var nestedTuple : js.lib.Tuple3<Any, Float, String, js.lib.Tuple2<Any, Bool, Array<Bool>>>; var computedFieldName : String; var sub : { var a : Float; var b : Float; }; function methodSignatureComplex<T:(haxe.extern.EitherType<String, Float>)>(a:Float, ?opt:String):T; @:overload(function(a:Float):Void { })
function methodSignatureWithOverload<T>(a:T):Void; var methodProperty : (a:Any) -> Void; @:optional
function methodSignatureOptional():String; var readonlyField : String; };
```