package unit.types.types;

typedef ObjectAlias = {
	var fieldA : Float;
	var fieldB : Float;
	var fieldArrayAlias : ArrayAlias;
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