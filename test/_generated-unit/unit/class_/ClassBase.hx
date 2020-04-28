package unit.class_;
@:jsRequire("./unit/class", "ClassBase") @tsInterface extern class ClassBase<T> {
	@:overload(function<T>(a:Float):ClassBase<T> { })
	function new(overloadParam:T);
	var intField : Float;
	var arrayField : std.Array<String>;
	var thisClassType : ClassBase<T>;
	var typeParamField : T;
	var typeofSelf : {
		function staticMethod<T>(a:Float):T;
		var staticField : Float;
		var namespaceField : String;
	};
	final readonlyField : Float;
	/**
		This field has a special name in typescript; we want to make sure it's not mistaken for the constructor
	**/
	function __constructor(example:String):Void;
	function method(a:Float, b:String):Any;
	/**
		single parameter signature
		
		multi-parameter signature
	**/
	@:overload(function(a:String, b:std.Array<{ }>):Any { })
	function methodOverloaded(a:Float):Any;
	var accessor : Bool;
	/**
		should be readonly
	**/
	final getOnlyAccessor : Float;
	var setOnlyAccessor : Float;
	static function staticMethod<T>(a:Float):T;
	static var staticField : Float;
	static var namespaceField : String;
}