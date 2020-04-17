- Handle callable classes
	symbol.flags & SymbolFlags.Function != 0
- Handle `extends` (seems like we already get redeclaration of fields)
- Handle implements

- Global modules
- Understand `tc.getAugmentedPropertiesOfType(declaredType)`
- Why is `export=` in the access path?

- BUG: Recursion in Either union, node.js I think
- BUG: InterfaceExtendsWithRedefinition's `call()` field does not get renamed
	=> This is because getFreePropertyName for type and symbol do not account for `extends`


? `tc.getBaseTypeOfLiteralType()` for literals?
? `tc.getBaseConstraintOfType(type)`
? `getBaseTypes(type:InterfaceType):Array<typescript.ts.BaseType>`
? `tc.getWidenedType()`
? `getApparentType()`
? could use `tc.getNonNullable` type instead of unwrap null
? `getRootSymbols()`

- Fields
	- Class fields
		- constructor
		- accessors
		- readonly
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

- Open haxe printer bug
```haxe
// this is a single field, the object has crappy printing
static var typeQueryObject : { var fieldA : Float; var fieldB : Float; var fieldArrayAlias : Array<String>; @:optional
var fieldOptional : Null<Float>; @:native("macro")
var macro_ : String; var nestedTuple : js.lib.Tuple3<Any, Float, String, js.lib.Tuple2<Any, Bool, Array<Bool>>>; var computedFieldName : String; var sub : { var a : Float; var b : Float; }; function methodSignatureComplex<T:(haxe.extern.EitherType<String, Float>)>(a:Float, ?opt:String):T; @:overload(function(a:Float):Void { })
function methodSignatureWithOverload<T>(a:T):Void; var methodProperty : (a:Any) -> Void; @:optional
function methodSignatureOptional():String; var readonlyField : String; };
```