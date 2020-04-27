- Refactor how we handle special case type conversions so we can do `useStructureType(symbol)` or similar

- `function intersectionBetweenTypeParams<A, B>(p: A & B): void;` -> `p: { }` ??

- Interfaces as typedefs
	- static fields are disallowed (InterfaceValueModule)
	- Should we do interface symbol splitting? Maybe this is simpler

- Improve structure printing, just make all fields have a newline (unless as an argument?)

- Class and interface extend handling, add override etc
	- Need to check where extending / intersection is allowed

- Index signatures
	- Haxe compiler feature requests

- Handle callable classes
	- symbol.flags & SymbolFlags.Function != 0
	- play well with other call signatures (also from construct type)

- Playcanvas, why 
	`Warning: Type has construct signature but this is currently unhandled ([Object] ScriptType [Class] ClassDeclaration /Users/geo/Projects/dts2hx/test/libs/node_modules/playcanvas/build/output/playcanvas.d.ts:22545:5)`
	When the type is a class?

- review __promisify__

- Enums:
	- Generate method to get keys
	- Support array access

- Construct signatures on anons
	- Use a generic build macro that wraps the type until haxe has @:newCall
		- an abstract with `Type.create(this)` might work
	- Open feature request https://github.com/HaxeFoundation/haxe/issues/9335

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