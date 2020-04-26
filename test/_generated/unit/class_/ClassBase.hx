package unit.class_;
@:jsRequire("./unit/class", "ClassBase") extern class ClassBase<T> {
	@:overload(function<T>(a:Float):ClassBase<T> { })
	function new(overloadParam:T);
	var intField : Float;
	var arrayField : std.Array<String>;
	var thisClassType : ClassBase<T>;
	var typeParamField : T;
	var typeofSelf : { function staticMethod<T>(a:Float):T; var staticField : Float; };
	final readonlyField : Float;
	function __constructor(example:String):Void;
	function method(a:Float, b:String):Any;
	@:overload(function(a:String, b:std.Array<{ }>):Any { })
	function methodOverloaded(a:Float):Any;
	/**
		@DTS2HX-ERROR: Unhandled symbol flags
	**/
	var accessor : Bool;
	static function staticMethod<T>(a:Float):T;
	static var staticField : Float;
}