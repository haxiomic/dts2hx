package unit.class_;

@:jsRequire("./unit/class", "ClassBase") extern class ClassBase<T, DefaultBool> {
	@:overload(function(a:Float):ClassBase<T, DefaultBool> { })
	function new(overloadParam:T);
	var intField : Float;
	var arrayField : Array<String>;
	var thisClassType : ClassBase<T, DefaultBool>;
	var typeParamField : T;
	var defaultBoolField : DefaultBool;
	var typeofSelf : {
		var prototype : ClassBase<Dynamic, Dynamic>;
		function staticMethod<T>(a:Float):T;
		var staticField : Float;
		final namespaceField : String;
	};
	final readonlyField : Float;
	/**
		This field has a special name in typescript; we want to make sure it's not mistaken for the constructor
	**/
	function __constructor(example:String):Void;
	function method(a:Float, b:String):Dynamic;
	/**
		single parameter signature
		
		multi-parameter signature
	**/
	@:overload(function(a:String, b:Array<{ }>):Dynamic { })
	function methodOverloaded(a:Float):Dynamic;
	var accessor : Bool;
	/**
		should be readonly
	**/
	final getOnlyAccessor : Float;
	var setOnlyAccessor : Float;
	static var prototype : ClassBase<Dynamic, Dynamic>;
	static function staticMethod<T>(a:Float):T;
	static var staticField : Float;
	static final namespaceField : String;
}