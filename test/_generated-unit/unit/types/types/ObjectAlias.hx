package unit.types.types;
typedef ObjectAlias = {
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
	var methodProperty : {
		@:selfCall
		function call<T>(a:T):Void;
	};
	@:optional
	function methodSignatureOptional():String;
	final readonlyField : String;
};