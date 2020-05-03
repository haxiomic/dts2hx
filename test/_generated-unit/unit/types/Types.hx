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
	static function partialTypeParam<T>(x:{ }):Void;
	static function functionImplicit(x:Dynamic, y:Dynamic):Dynamic;
	static function functionNumberStringVoidAlt(a:Float, b:String):Void;
	static function functionNumberTVoidTypeParamAlt<T>(a:Float, tparam:T):Void;
	@:overload(function(a:String):Dynamic { })
	@:overload(function(a:std.Array<js.lib.Symbol>):Dynamic { })
	@:overload(function<T, U>(a:std.Array<js.lib.Symbol>, u:U):T { })
	static function overloadedFunction(a:Float):Dynamic;
	static function typeParameterWithConstraint<T>(x:T):Dynamic;
	static function intersectionBetweenTypeParams<A, B>(p:Dynamic):Void;
	static function firstTypeFunction(node:{ }):Bool;
	static var implicitInt : Int;
	static var implicitFloat : Float;
	static var implicitBool : Bool;
	static var implicitStr : String;
	static var noType : Dynamic;
	static var numberPrimitive : Float;
	static var booleanPrimitive : Bool;
	static var stringPrimitive : String;
	static var stringObject : ts.lib.IString;
	static var numberObject : ts.lib.INumber;
	static var booleanObject : ts.lib.IBoolean;
	static var symbolPrimitive : js.lib.Symbol;
	static var symbolObject : js.lib.Symbol;
	static var any : Dynamic;
	static var typeInParentheses : Float;
	static var unionInParentheses : ts.AnyOf2<String, Float>;
	static var intLiteral : Int;
	static var intLiteralAlt : Int;
	static var floatLiteral : Float;
	static var booleanLiteral : Bool;
	static var stringLiteral : String;
	static var typeReferenceStringAlias : String;
	static var typeReferenceArrayAlias : unit.types.types.ArrayAlias;
	static var typeReferenceObjectAlias : {
		var fieldA : Float;
		var fieldB : Float;
		var fieldArrayAlias : unit.types.types.ArrayAlias;
		@:optional
		var fieldOptional : Float;
		@:native("macro")
		var macro_ : String;
		var nestedTuple : ts.Tuple3<Float, String, ts.Tuple2<Bool, std.Array<Bool>>>;
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
	static var typeReferenceAliasWithTypeParam : unit.types.types.AliasWithTypeParam<String, Float>;
	static var object : {
		var fieldA : Float;
		var fieldB : Float;
		var fieldArrayAlias : unit.types.types.ArrayAlias;
		@:optional
		var fieldOptional : Float;
		@:native("macro")
		var macro_ : String;
		var nestedTuple : ts.Tuple3<Float, String, ts.Tuple2<Bool, std.Array<Bool>>>;
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
		var a : Dynamic;
	};
	static var arrayString : std.Array<String>;
	static var arrayStringAlt : std.Array<String>;
	static var stringObj : ts.lib.IString;
	static var arrayNumberStringUnion : std.Array<ts.AnyOf2<String, Float>>;
	static var tupleNumberString : ts.Tuple2<Float, String>;
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
	static var mappedStringIndex : Dynamic;
	static var partial : {
		@:optional
		var a : Float;
		@:optional
		var b : String;
	};
	static var arrowNumberStringVoid : (a:Float, noType:Dynamic) -> Void;
	static var arrowNumberTVoidTypeParam : (a:Float, tParam:Any, arrayTParam:std.Array<Any>) -> Void;
	static var arrowParamWithRest : (a:Float, b:Float, rest:haxe.extern.Rest<Float>) -> Void;
	static var arrowParamWithRestOr : (a:Float, b:Float, rest:haxe.extern.Rest<Any>) -> Void;
	static var arrowParamWithRestUnion : (a:Float, b:Float, rest:haxe.extern.Rest<Any>) -> Void;
	static var arrowParamWithRestTuple : (a:Float, b:Float, rest_0:Float) -> Void;
	static var arrowParamWithRestTupleUnion : (a:Float, b:Float, rest:haxe.extern.Rest<Any>) -> Void;
	static var arrowParamObjectBindingPattern : (__0:{ var x : Dynamic; var y : Dynamic; }) -> Void;
	static var nullableNumber : Null<Float>;
	static var undefineableNumber : Null<Float>;
	static var undefineableNullableNumber : Null<Float>;
	static var intersectionWithSubIntersection : Dynamic;
	static var intersectionXY : {
		var x : Float;
	} & {
		var y : Float;
	};
	static var intersectionRedefinitionSame : {
		var x : Float;
	};
	static var intersectionRedefinitionDifferent : Dynamic;
	static var intersectionWithTypeof : {
		var fieldA : Float;
		var fieldB : Float;
		var fieldArrayAlias : unit.types.types.ArrayAlias;
		@:optional
		var fieldOptional : Float;
		@:native("macro")
		var macro_ : String;
		var nestedTuple : ts.Tuple3<Float, String, ts.Tuple2<Bool, std.Array<Bool>>>;
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
	static var intersectionWithAny : Dynamic;
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
	static var intersectionWithUnion : ts.AnyOf2<{
		var a : String;
	} & {
		var b : Bool;
	}, {
		var c : Float;
	}>;
	static var intersectionWithCallSignatures : Dynamic;
	static var intersectionAnonAlias : unit.types.types.Anon & {
		var b : Bool;
	};
	static var intersectionBetweenClasses : Dynamic;
	static var typeQueryImplicitStr : String;
	static var typeQueryObject : {
		var fieldA : Float;
		var fieldB : Float;
		var fieldArrayAlias : unit.types.types.ArrayAlias;
		@:optional
		var fieldOptional : Float;
		@:native("macro")
		var macro_ : String;
		var nestedTuple : ts.Tuple3<Float, String, ts.Tuple2<Bool, std.Array<Bool>>>;
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
	static var typeQueryNoType : Dynamic;
	static var typeQueryFunction : (x:Dynamic, y:Dynamic) -> Dynamic;
	static var typeQueryFunctionWithOverloads : {
		@:overload(function(a:String):Dynamic { })
		@:overload(function(a:std.Array<js.lib.Symbol>):Dynamic { })
		@:overload(function<T, U>(a:std.Array<js.lib.Symbol>, u:U):T { })
		@:selfCall
		function call(a:Float):Dynamic;
	};
	static var typeQueryClassLikeOrNull : Null<{
		var field : String;
	}>;
}