package unit.functions.functions;

typedef WithMethods = {
	function simple():Void;
	function withParams(a:String, b:Float):Bool;
	@:optional
	function optional(a:String):Void;
	@:overload(function(a:Float):Float { })
	function overloaded(a:String):String;
	function generic<T>(x:T):T;
	final readonlyProp : String;
};