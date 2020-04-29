package js.lib;
extern typedef ErrorConstructor = {
	@:selfCall
	function call(?message:String):IError;
	final prototype : IError;
	/**
		Create .stack property on a target object
	**/
	function captureStackTrace(targetObject:IObject, ?constructorOpt:IFunction):Void;
	/**
		Optional override for formatting stack traces
	**/
	@:optional
	var prepareStackTrace : (err:IError, stackTraces:std.Array<global.nodejs.CallSite>) -> Any;
	var stackTraceLimit : Float;
};