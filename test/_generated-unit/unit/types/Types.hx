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
	@:overload(function(a:Array<js.lib.Symbol>):Dynamic { })
	@:overload(function<T, U>(a:Array<js.lib.Symbol>, u:U):T { })
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
	static var stringObject : String;
	static var numberObject : ts.lib.Number;
	static var booleanObject : ts.lib.Boolean;
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
		var nestedTuple : ts.Tuple3<Float, String, ts.Tuple2<Bool, Array<Bool>>>;
		var computedFieldName : String;
		var sub : {
			var a : Float;
			var b : Float;
		};
		function methodSignatureComplex<T>(a:Float, ?opt:String):T;
		@:overload(function(a:Float):Void { })
		function methodSignatureWithOverload<T>(a:T):Void;
		dynamic function methodProperty<T>(a:T):Void;
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
		var nestedTuple : ts.Tuple3<Float, String, ts.Tuple2<Bool, Array<Bool>>>;
		var computedFieldName : String;
		var sub : {
			var a : Float;
			var b : Float;
		};
		function methodSignatureComplex<T>(a:Float, ?opt:String):T;
		@:overload(function(a:Float):Void { })
		function methodSignatureWithOverload<T>(a:T):Void;
		dynamic function methodProperty<T>(a:T):Void;
		@:optional
		function methodSignatureOptional():String;
		final readonlyField : String;
	};
	static var objectSingleField : {
		var a : Dynamic;
	};
	static var arrayString : Array<String>;
	static var arrayStringAlt : Array<String>;
	static var stringObj : String;
	static var arrayNumberStringUnion : Array<ts.AnyOf2<String, Float>>;
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
	dynamic static function arrowNumberStringVoid(a:Float, noType:Dynamic):Void;
	dynamic static function arrowNumberTVoidTypeParam<T>(a:Float, tParam:T, arrayTParam:Array<T>):Void;
	dynamic static function arrowParamWithRest(a:Float, b:Float, rest:haxe.extern.Rest<Float>):Void;
	dynamic static function arrowParamWithRestOr(a:Float, b:Float, rest:haxe.extern.Rest<Any>):Void;
	dynamic static function arrowParamWithRestUnion(a:Float, b:Float, rest:haxe.extern.Rest<Any>):Void;
	dynamic static function arrowParamWithRestTuple(a:Float, b:Float, rest_0:Float):Void;
	dynamic static function arrowParamWithRestTupleUnion(a:Float, b:Float, rest:haxe.extern.Rest<Any>):Void;
	dynamic static function arrowParamObjectBindingPattern(__0:{ var x : Dynamic; var y : Dynamic; }):Void;
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
		var nestedTuple : ts.Tuple3<Float, String, ts.Tuple2<Bool, Array<Bool>>>;
		var computedFieldName : String;
		var sub : {
			var a : Float;
			var b : Float;
		};
		function methodSignatureComplex<T>(a:Float, ?opt:String):T;
		@:overload(function(a:Float):Void { })
		function methodSignatureWithOverload<T>(a:T):Void;
		dynamic function methodProperty<T>(a:T):Void;
		@:optional
		function methodSignatureOptional():String;
		final readonlyField : String;
	} & {
		var extendedField : Float;
	};
	static var intersectionWithAny : Dynamic;
	static var intersectionWithArray : {
		var x : Float;
	} & ts.lib.IArray<Float>;
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
		var nestedTuple : ts.Tuple3<Float, String, ts.Tuple2<Bool, Array<Bool>>>;
		var computedFieldName : String;
		var sub : {
			var a : Float;
			var b : Float;
		};
		function methodSignatureComplex<T>(a:Float, ?opt:String):T;
		@:overload(function(a:Float):Void { })
		function methodSignatureWithOverload<T>(a:T):Void;
		dynamic function methodProperty<T>(a:T):Void;
		@:optional
		function methodSignatureOptional():String;
		final readonlyField : String;
	};
	static var typeQueryNoType : Dynamic;
	dynamic static function typeQueryFunction(x:Dynamic, y:Dynamic):Dynamic;
	@:overload(function(a:String):Dynamic { })
	@:overload(function(a:Array<js.lib.Symbol>):Dynamic { })
	@:overload(function<T, U>(a:Array<js.lib.Symbol>, u:U):T { })
	dynamic static function typeQueryFunctionWithOverloads(a:Float):Dynamic;
	static var typeQueryClassLikeOrNull : Null<{
		var field : String;
	}>;
}