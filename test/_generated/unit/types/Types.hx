package unit.types;
/**
	See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#3-types
	
	  # Type Categories
	  - primitive types
	      Number, Boolean, String, Symbol (Void, Null, and Undefined are not referenceable)
	  - object types
	      composed from *properties*, *call signatures*, *construct signatures*, and *index signatures* (collectively called members)
	      - Object type literals
	      - Array type literals
	      - Tuple type literals
	      - Function type literals
	      - Constructor type literals 
	      - Constructor function types created by class declarations (section 8.2.5).
	      - Namespace instance types created by namespace declarations (section 10.3).
	  - union types
	  - intersection types
	  - type parameters
**/
@:jsRequire("./unit/types", "Types") extern class Types {
	static function partialTypeParam<T>(x:Any):Void;
	static function functionImplicit(x:Any, y:Any):Any;
	static function functionNumberStringVoidAlt(a:Float, b:String):Void;
	static function functionNumberTVoidTypeParamAlt<T>(a:Float, tparam:T):Void;
	@:overload(function(a:String):Any { })
	@:overload(function(a:std.Array<js.lib.Symbol>):Any { })
	@:overload(function<T, U>(a:std.Array<js.lib.Symbol>, u:U):T { })
	static function overloadedFunction(a:Float):Any;
	static function typeParameterWithConstraint<T:(std.Array<Float>)>(x:T):Any;
	static function firstTypeFunction(node:{ }):Bool;
	static var implicitInt : Int;
	static var implicitFloat : Float;
	static var implicitBool : Bool;
	static var implicitStr : String;
	static var noType : Any;
	static var numberPrimitive : Float;
	static var booleanPrimitive : Bool;
	static var stringPrimitive : String;
	static var stringObject : js.lib.String;
	static var numberObject : js.lib.Number;
	static var booleanObject : js.lib.Boolean;
	static var symbolPrimitive : js.lib.Symbol;
	static var symbolObject : js.lib.Symbol;
	static var any : Any;
	static var typeInParentheses : Float;
	static var unionInParentheses : haxe.extern.EitherType<String, Float>;
	static var intLiteral : Int;
	static var intLiteralAlt : Int;
	static var floatLiteral : Float;
	static var booleanLiteral : Bool;
	static var stringLiteral : String;
	static var typeReferenceStringAlias : String;
	static var typeReferenceArrayAlias : std.Array<String>;
	static var typeReferenceObjectAlias : { var fieldA : Float; var fieldB : Float; var fieldArrayAlias : std.Array<String>; @:optional
	var fieldOptional : Null<Float>; @:native("macro")
	var macro_ : String; var nestedTuple : js.lib.Tuple3<Any, Float, String, js.lib.Tuple2<Any, Bool, std.Array<Bool>>>; var computedFieldName : String; var sub : { var a : Float; var b : Float; }; function methodSignatureComplex<T:(haxe.extern.EitherType<String, Float>)>(a:Float, ?opt:String):T; @:overload(function(a:Float):Void { })
	function methodSignatureWithOverload<T>(a:T):Void; var methodProperty : (a:Any) -> Void; @:optional
	function methodSignatureOptional():String; final readonlyField : String; };
	static var typeReferenceAliasWithTypeParam : js.lib.Map<String, Float>;
	static var object : { var fieldA : Float; var fieldB : Float; var fieldArrayAlias : std.Array<String>; @:optional
	var fieldOptional : Null<Float>; @:native("macro")
	var macro_ : String; var nestedTuple : js.lib.Tuple3<Any, Float, String, js.lib.Tuple2<Any, Bool, std.Array<Bool>>>; var computedFieldName : String; var sub : { var a : Float; var b : Float; }; function methodSignatureComplex<T:(haxe.extern.EitherType<String, Float>)>(a:Float, ?opt:String):T; @:overload(function(a:Float):Void { })
	function methodSignatureWithOverload<T>(a:T):Void; var methodProperty : (a:Any) -> Void; @:optional
	function methodSignatureOptional():String; final readonlyField : String; };
	static var objectSingleField : { var a : Any; };
	static var arrayString : std.Array<String>;
	static var arrayStringAlt : std.Array<String>;
	static var stringObj : js.lib.String;
	static var arrayNumberStringUnion : std.Array<haxe.extern.EitherType<String, Float>>;
	static var tupleNumberString : js.lib.Tuple2<Any, Float, String>;
	static var stringNumberMap : { };
	static var readonlyStringNumberMap : { };
	static var stringNumberMapWithField : { var field : Float; };
	static var numberStringMap : { };
	static var readonlyNumberStringMap : { };
	static var numberStringMapWithField : { var field : String; };
	static var stringAndNumberMapWithField : { var length : String; };
	static var mappedStringIndex : Any;
	static var partial : Any;
	static var arrowNumberStringVoid : (a:Float, noType:Any) -> Void;
	static var arrowNumberTVoidTypeParam : (a:Float, tparam:Any) -> Void;
	static var arrowParamWithRest : (a:Float, b:Float, rest:std.Array<Float>) -> Void;
	static var arrowParamObjectBindingPattern : (__0:{ var x : Any; var y : Any; }) -> Void;
	static var nullableNumber : Null<Float>;
	static var undefineableNumber : Null<Float>;
	static var undefineableNullableNumber : Null<Float>;
	static var intersectionWithSubIntersection : Any;
	static var intersectionXY : Any;
	static var intersectionRedefinitionSame : Any;
	static var intersectionInvalidRedefinition : Any;
	static var extendedObject : Any;
	static var intersectionWithAny : Any;
	static var intersectionWithArray : Any;
	static var typeQueryImplicitStr : String;
	static var typeQueryObject : { var fieldA : Float; var fieldB : Float; var fieldArrayAlias : std.Array<String>; @:optional
	var fieldOptional : Null<Float>; @:native("macro")
	var macro_ : String; var nestedTuple : js.lib.Tuple3<Any, Float, String, js.lib.Tuple2<Any, Bool, std.Array<Bool>>>; var computedFieldName : String; var sub : { var a : Float; var b : Float; }; function methodSignatureComplex<T:(haxe.extern.EitherType<String, Float>)>(a:Float, ?opt:String):T; @:overload(function(a:Float):Void { })
	function methodSignatureWithOverload<T>(a:T):Void; var methodProperty : (a:Any) -> Void; @:optional
	function methodSignatureOptional():String; final readonlyField : String; };
	static var typeQueryNoType : Any;
	static var typeQueryFunction : (x:Any, y:Any) -> Any;
	static var typeQueryFunctionWithOverloads : { @:overload(function(a:String):Any { })
	@:overload(function(a:std.Array<js.lib.Symbol>):Any { })
	@:overload(function<T, U>(a:std.Array<js.lib.Symbol>, u:U):T { })
	@:selfCall
	function call(a:Float):Any; };
}