package unit.class_;
@:jsRequire("./unit/class", "ClassBase") extern class ClassBase<T> {
	@:overload(function<T>(a:Float):ClassBase<T> { })
	function new(overloadParam:T);
	var intField : Float;
	var arrayField : Array<String>;
	var thisClassType : ClassBase<T>;
	var typeParamField : T;
	final readonlyField : Float;
	function __constructor(example:String):Void;
	function method(a:Float, b:String):Any;
	@:overload(function(a:String, b:Array<{ }>):Any { })
	function methodOverloaded(a:Float):Any;
	/**
		@DTS2HX-ERROR: Unhandled symbol flags
	**/
	var accessor : Any;
	static function staticMethod<T>(a:Float):T;
	static var staticField : Float;
}