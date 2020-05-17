package ts.lib;

@:native("Error") extern class Error {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):Error;
	static final prototype : Error;
	/**
		Create .stack property on a target object
	**/
	static function captureStackTrace(targetObject:js.lib.Object, ?constructorOpt:js.lib.Function):Void;
	/**
		Optional override for formatting stack traces
	**/
	@:optional
	dynamic static function prepareStackTrace(err:Error, stackTraces:Array<global.nodejs.CallSite>):Dynamic;
	static var stackTraceLimit : Float;
}