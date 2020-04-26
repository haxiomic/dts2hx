package js.lib;
@:native("Error") @:interface extern class Error {
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
	static function captureStackTrace(targetObject:Object, ?constructorOpt:Function):Void;
	/**
		Optional override for formatting stack traces
	**/
	@:optional
	static var prepareStackTrace : (err:Error, stackTraces:std.Array<global.nodejs.CallSite>) -> Any;
	static var stackTraceLimit : Float;
}