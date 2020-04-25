- Use subtypes for typedef anons (so it's not an anon repreated 3x)

- Do constructor types appear in the wild in a useful way? Can @:newCall help?	
	- Can we use abstracts to handle Constructor types?
		```haxe
		@:generic @:forward abstract ConstructorType<T: Constructible>(T) {
			public function construct() {
				Type.createInstance(this); // or something similar
			}
		}
		```
		- Can we add a @:using to the interface?

- If a constructor type is a type parameter we can use `Constructible`

- HaxeTools: fieldName deduplication
	- Given an array of fields, find duplicate names and add _ + @:native
	- Or, add a helper to handle fields.push() with auto-rename

- Playcanvas, why 
	`Warning: Type has construct signature but this is currently unhandled ([Object] ScriptType [Class] ClassDeclaration /Users/geo/Projects/dts2hx/test/libs/node_modules/playcanvas/build/output/playcanvas.d.ts:22545:5)`
	When the type is a class?

- Call signatures on anons
	- Use a generic build macro that wraps the type until haxe has @:newCall
	- Open feature request https://github.com/HaxeFoundation/haxe/issues/9335

- Handle callable classes
	symbol.flags & SymbolFlags.Function != 0

- Global modules
	- Should we have Global.hx per-package or just one?

- Understand `tc.getAugmentedPropertiesOfType(declaredType)`
? `tc.getBaseTypeOfLiteralType()` for literals?
? `tc.getBaseConstraintOfType(type)`
? `getBaseTypes(type:InterfaceType):Array<typescript.ts.BaseType>`
? `tc.getWidenedType()`
? `getApparentType()`
? could use `tc.getNonNullable` type instead of unwrap null
? `getRootSymbols()`

- Fields
	- Class fields
		- accessors
		- readonly
	- Class static fields
	- Typedef static fields
	- Enum static fields
	- ValueModule fields

- Class and interface extend handling, add override etc

- Abstract classes?

? Maybe: When shortening paths, do we need to check for collisions with haxe root types? (like Iterator)

- review __promisify__

- Three.hx could have type aliases, or not be generated since it's empty
	- Maybe we don't want to ignore Export * symbols in `walkDeclarationSymbols`

- getDoc should account for the relevant declaration – see `node/fs/ReadFile.hx`, doc is duplicated

- Review class-expression syntax `let x = class ...`

- Enums:
	- Generate method to get keys
	- Support array access

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