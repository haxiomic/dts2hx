package unit.types.types;
typedef ObjectAlias = {
	var fieldA : Float;
	var fieldB : Float;
	var fieldArrayAlias : Array<String>;
	@:optional
	var fieldOptional : Null<Float>;
	@:native("macro")
	var macro_ : String;
	var nestedTuple : js.lib.Tuple3<Any, Float, String, js.lib.Tuple2<Any, Bool, Array<Bool>>>;
	var computedFieldName : String;
	var sub : { var a : Float; var b : Float; };
	function methodSignatureComplex<T:(String)>(a:Float, ?opt:String):T;
	@:overload(function(a:Float):Void { })
	function methodSignatureWithOverload<T>(a:T):Void;
	var methodProperty : (a:Any) -> Void;
	@:optional
	function methodSignatureOptional():String;
	var readonlyField : String;
};