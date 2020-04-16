package unit.class_;
@:jsRequire("./unit/class", "ClassBase") extern class ClassBase<T> {
	var intField : Float;
	var arrayField : Array<String>;
	var thisClassType : ClassBase;
	var typeParamField : T;
	var readonlyField : Float;
	function method(a:Float, b:String):Any;
	@:overload(function(a:String, b:Array<{ }>):Any { })
	function methodOverloaded(a:Float):Any;
	/**
		@DTS2HX-ERROR: Unhandled symbol flags
	**/
	var property : Any;
}