package js.lib;
@:native("Error") extern class Error {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):IError;
	static final prototype : IError;
	/**
		Create .stack property on a target object
	**/
	static function captureStackTrace(targetObject:IObject, ?constructorOpt:IFunction):Void;
	/**
		Optional override for formatting stack traces
	**/
	@:optional
	static var prepareStackTrace : (err:IError, stackTraces:std.Array<global.nodejs.CallSite>) -> Any;
	static var stackTraceLimit : Float;
}