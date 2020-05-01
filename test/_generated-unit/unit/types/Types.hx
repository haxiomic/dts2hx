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
@:jsRequire("./unit/types", "Types") @valueModuleOnly extern class Types {
	static function functionWithOptional(a:String, ?b:Bool):Float;
	static function partialTypeParam<T>(x:Any):Void;
	static function functionImplicit(x:Any, y:Any):Any;
	static function functionNumberStringVoidAlt(a:Float, b:String):Void;
	static function functionNumberTVoidTypeParamAlt<T>(a:Float, tparam:T):Void;
	@:overload(function(a:String):Any { })
	@:overload(function(a:std.Array<js.lib.Symbol>):Any { })
	@:overload(function<T, U>(a:std.Array<js.lib.Symbol>, u:U):T { })
	static function overloadedFunction(a:Float):Any;
	static function typeParameterWithConstraint<T>(x:T):Any;
	static function intersectionBetweenTypeParams<A, B>(p:Any):Void;
	static function firstTypeFunction(node:{ }):Bool;
	static var implicitInt : Int;
	static var implicitFloat : Float;
	static var implicitBool : Bool;
	static var implicitStr : String;
	static var noType : Any;
	static var numberPrimitive : Float;
	static var booleanPrimitive : Bool;
	static var stringPrimitive : String;
	static var stringObject : ts.lib.IString;
	static var numberObject : ts.lib.INumber;
	static var booleanObject : ts.lib.IBoolean;
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
	static var typeReferenceObjectAlias : {
		var fieldA : Float;
		var fieldB : Float;
		var fieldArrayAlias : std.Array<String>;
		@:optional
		var fieldOptional : Float;
		@:native("macro")
		var macro_ : String;
		var nestedTuple : ts.lib.Tuple3<Float, String, ts.lib.Tuple2<Bool, std.Array<Bool>>>;
		var computedFieldName : String;
		var sub : {
			var a : Float;
			var b : Float;
		};
		function methodSignatureComplex<T>(a:Float, ?opt:String):T;
		@:overload(function(a:Float):Void { })
		function methodSignatureWithOverload<T>(a:T):Void;
		var methodProperty : (a:Any) -> Void;
		@:optional
		function methodSignatureOptional():String;
		final readonlyField : String;
	};
	static var typeReferenceAliasWithTypeParam : ts.lib.IMap<String, Float>;
	static var object : {
		var fieldA : Float;
		var fieldB : Float;
		var fieldArrayAlias : std.Array<String>;
		@:optional
		var fieldOptional : Float;
		@:native("macro")
		var macro_ : String;
		var nestedTuple : ts.lib.Tuple3<Float, String, ts.lib.Tuple2<Bool, std.Array<Bool>>>;
		var computedFieldName : String;
		var sub : {
			var a : Float;
			var b : Float;
		};
		function methodSignatureComplex<T>(a:Float, ?opt:String):T;
		@:overload(function(a:Float):Void { })
		function methodSignatureWithOverload<T>(a:T):Void;
		var methodProperty : (a:Any) -> Void;
		@:optional
		function methodSignatureOptional():String;
		final readonlyField : String;
	};
	static var objectSingleField : {
		var a : Any;
	};
	static var arrayString : std.Array<String>;
	static var arrayStringAlt : std.Array<String>;
	static var stringObj : ts.lib.IString;
	static var arrayNumberStringUnion : std.Array<haxe.extern.EitherType<String, Float>>;
	static var tupleNumberString : ts.lib.Tuple2<Float, String>;
	static var stringNumberMap : { };
	static var readonlyStringNumberMap : { };
	static var stringNumberMapWithField : {
		var field : Float;
	};
	static var numberStringMap : { };
	static var readonlyNumberStringMap : { };
	static var numberStringMapWithField : {
		var field : String;
	};
	static var stringAndNumberMapWithField : {
		var length : String;
	};
	static var mappedStringIndex : Any;
	static var partial : Any;
	static var arrowNumberStringVoid : (a:Float, noType:Any) -> Void;
	static var arrowNumberTVoidTypeParam : (a:Float, tParam:Any, arrayTParam:std.Array<T>) -> Void;
	static var arrowParamWithRest : (a:Float, b:Float, rest:haxe.extern.Rest<Float>) -> Void;
	static var arrowParamWithRestOr : (a:Float, b:Float, rest:haxe.extern.EitherType<std.Array<Any>, ts.lib.Tuple1<Float>>) -> Void;
	static var arrowParamWithRestUnion : (a:Float, b:Float, rest:haxe.extern.EitherType<std.Array<Float>, std.Array<Bool>>) -> Void;
	static var arrowParamWithRestTuple : (a:Float, b:Float, rest_0:Float) -> Void;
	static var arrowParamWithRestTupleUnion : (a:Float, b:Float, rest:haxe.extern.EitherType<ts.lib.Tuple1<Float>, ts.lib.Tuple1<Bool>>) -> Void;
	static var arrowParamObjectBindingPattern : (__0:{ var x : Any; var y : Any; }) -> Void;
	static var nullableNumber : Null<Float>;
	static var undefineableNumber : Null<Float>;
	static var undefineableNullableNumber : Null<Float>;
	static var intersectionWithSubIntersection : Any;
	static var intersectionXY : {
		var x : Float;
	} & {
		var y : Float;
	};
	static var intersectionRedefinitionSame : {
		var x : Float;
	};
	static var intersectionRedefinitionDifferent : Any;
	static var intersectionWithTypeof : {
		var fieldA : Float;
		var fieldB : Float;
		var fieldArrayAlias : std.Array<String>;
		@:optional
		var fieldOptional : Float;
		@:native("macro")
		var macro_ : String;
		var nestedTuple : ts.lib.Tuple3<Float, String, ts.lib.Tuple2<Bool, std.Array<Bool>>>;
		var computedFieldName : String;
		var sub : {
			var a : Float;
			var b : Float;
		};
		function methodSignatureComplex<T>(a:Float, ?opt:String):T;
		@:overload(function(a:Float):Void { })
		function methodSignatureWithOverload<T>(a:T):Void;
		var methodProperty : (a:Any) -> Void;
		@:optional
		function methodSignatureOptional():String;
		final readonlyField : String;
	} & {
		var extendedField : Float;
	};
	static var intersectionWithAny : Any;
	static var intersectionWithArray : {
		var x : Float;
	} & std.Array<Float>;
	static var intersectionStringNumber : Any;
	static var intersectionTripleAnon : {
		var x : Float;
	} & {
		var y : Float;
	} & {
		var z : Float;
	};
	static var intersectionWithUnion : haxe.extern.EitherType<{
		var a : String;
	} & {
		var b : Bool;
	}, {
		var c : Float;
	}>;
	static var intersectionWithCallSignatures : Any;
	static var intersectionAnonAlias : {
		var a : String;
	} & {
		var b : Bool;
	};
	static var intersectionBetweenClasses : Any;
	static var typeQueryImplicitStr : String;
	static var typeQueryObject : {
		var fieldA : Float;
		var fieldB : Float;
		var fieldArrayAlias : std.Array<String>;
		@:optional
		var fieldOptional : Float;
		@:native("macro")
		var macro_ : String;
		var nestedTuple : ts.lib.Tuple3<Float, String, ts.lib.Tuple2<Bool, std.Array<Bool>>>;
		var computedFieldName : String;
		var sub : {
			var a : Float;
			var b : Float;
		};
		function methodSignatureComplex<T>(a:Float, ?opt:String):T;
		@:overload(function(a:Float):Void { })
		function methodSignatureWithOverload<T>(a:T):Void;
		var methodProperty : (a:Any) -> Void;
		@:optional
		function methodSignatureOptional():String;
		final readonlyField : String;
	};
	static var typeQueryNoType : Any;
	static var typeQueryFunction : (x:Any, y:Any) -> Any;
	static var typeQueryFunctionWithOverloads : {
		@:overload(function(a:String):Any { })
		@:overload(function(a:std.Array<js.lib.Symbol>):Any { })
		@:overload(function<T, U>(a:std.Array<js.lib.Symbol>, u:U):T { })
		@:selfCall
		function call(a:Float):Any;
	};
	static var typeQueryClassLikeOrNull : Null<{
		var field : String;
	}>;
}