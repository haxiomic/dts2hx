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
	static function partialTypeParam<T>(x:T):Void;
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
	static final implicitInt : Int;
	static final implicitFloat : Float;
	static final implicitBool : Bool;
	static final implicitStr : String;
	static final noType : Dynamic;
	static final numberPrimitive : Float;
	static final booleanPrimitive : Bool;
	static final stringPrimitive : String;
	static final stringObject : String;
	static final numberObject : js.lib.Number;
	static final booleanObject : js.lib.Boolean;
	static final symbolPrimitive : js.lib.Symbol;
	static final symbolObject : js.lib.Symbol;
	static final any : Dynamic;
	static final typeInParentheses : Float;
	static final unionInParentheses : ts.AnyOf2<String, Float>;
	static final voidType : Any;
	static final voidUnionType : ts.AnyOf2<Float, Any>;
	static final voidTypeParam : Array<Any>;
	static final voidObjField : {
		var x : Any;
	};
	static function voidArg(a:Any):Void;
	static final intLiteral : Int;
	static final intLiteralAlt : Int;
	static final floatLiteral : Float;
	static final booleanLiteral : Bool;
	static final stringLiteral : String;
	static final typeReferenceStringAlias : String;
	static final typeReferenceArrayAlias : unit.types.types.ArrayAlias;
	static final typeReferenceObjectAlias : {
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
	static final typeReferenceAliasWithTypeParam : unit.types.types.AliasWithTypeParam<String, Float>;
	static final object : {
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
	static final objectSingleField : {
		var a : Dynamic;
	};
	static final arrayString : Array<String>;
	static final arrayStringAlt : Array<String>;
	static final stringObj : String;
	static final arrayNumberStringUnion : Array<ts.AnyOf2<String, Float>>;
	static final tupleNumberString : ts.Tuple2<Float, String>;
	static final stringNumberMap : { };
	static final readonlyStringNumberMap : { };
	static final stringNumberMapWithField : {
		var field : Float;
	};
	static final numberStringMap : { };
	static final readonlyNumberStringMap : { };
	static final numberStringMapWithField : {
		var field : String;
	};
	static final stringAndNumberMapWithField : {
		var length : String;
	};
	static final mappedStringIndex : Dynamic;
	static final partial : {
		@:optional
		var a : Float;
		@:optional
		var b : String;
	};
	static final readonlyAnon : {
		var a : String;
		var r : {
			var a : Bool;
			var b : Bool;
			var c : Bool;
		};
	};
	static function arrowNumberStringVoid(a:Float, noType:Dynamic):Void;
	static function arrowNumberTVoidTypeParam<T>(a:Float, tParam:T, arrayTParam:Array<T>):Void;
	static function arrowParamWithRest(a:Float, b:Float, rest:haxe.extern.Rest<Float>):Void;
	static function arrowParamWithRestOr(a:Float, b:Float, rest:haxe.extern.Rest<Any>):Void;
	static function arrowParamWithRestUnion(a:Float, b:Float, rest:haxe.extern.Rest<Any>):Void;
	static function arrowParamWithRestTuple(a:Float, b:Float, rest_0:Float):Void;
	static function arrowParamWithRestTupleUnion(a:Float, b:Float, rest:haxe.extern.Rest<Any>):Void;
	static function arrowParamObjectBindingPattern(__0:{ var x : Dynamic; var y : Dynamic; }):Void;
	static final nullableNumber : Null<Float>;
	static final undefineableNumber : Null<Float>;
	static final undefineableNullableNumber : Null<Float>;
	static final intersectionWithSubIntersection : Dynamic;
	static final intersectionXY : {
		var x : Float;
	} & {
		var y : Float;
	};
	static final intersectionRedefinitionSame : {
		var x : Float;
	};
	static final intersectionRedefinitionDifferent : Dynamic;
	static final intersectionWithTypeof : {
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
	static final intersectionWithAny : Dynamic;
	static final intersectionWithArray : {
		var x : Float;
	} & js.lib.IArray<Float>;
	static final intersectionStringNumber : Any;
	static final intersectionTripleAnon : {
		var x : Float;
	} & {
		var y : Float;
	} & {
		var z : Float;
	};
	static final intersectionWithUnion : ts.AnyOf2<{
		var a : String;
	} & {
		var b : Bool;
	}, {
		var c : Float;
	}>;
	static final intersectionWithCallSignatures : Dynamic;
	static final intersectionAnonAlias : unit.types.types.Anon & {
		var b : Bool;
	};
	static final intersectionBetweenClasses : Dynamic;
	static final typeQueryImplicitStr : String;
	static final typeQueryObject : {
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
	static final typeQueryNoType : Dynamic;
	static function typeQueryFunction(x:Dynamic, y:Dynamic):Dynamic;
	@:overload(function(a:String):Dynamic { })
	@:overload(function(a:Array<js.lib.Symbol>):Dynamic { })
	@:overload(function<T, U>(a:Array<js.lib.Symbol>, u:U):T { })
	static function typeQueryFunctionWithOverloads(a:Float):Dynamic;
	static final typeQueryClassLikeOrNull : Null<{
		var field : String;
	}>;
}