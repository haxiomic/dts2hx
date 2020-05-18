package js.lib;

typedef ErrorConstructor = {
	@:selfCall
	function call(?message:String):js.lib.Error;
	final prototype : js.lib.Error;
	/**
		Create .stack property on a target object
	**/
	function captureStackTrace(targetObject:js.lib.Object, ?constructorOpt:js.lib.Function):Void;
	/**
		Optional override for formatting stack traces
	**/
	@:optional
	dynamic function prepareStackTrace(err:js.lib.Error, stackTraces:Array<global.nodejs.CallSite>):Dynamic;
	var stackTraceLimit : Float;
};