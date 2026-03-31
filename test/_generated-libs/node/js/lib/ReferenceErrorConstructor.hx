package js.lib;

typedef ReferenceErrorConstructor = {
	@:overload(function(?message:String):js.lib.Error { })
	@:selfCall
	function call(?message:String):js.lib.Error.ReferenceError;
	final prototype : js.lib.Error.ReferenceError;
	/**
		Create .stack property on a target object
	**/
	function captureStackTrace(targetObject:Dynamic, ?constructorOpt:haxe.Constraints.Function):Void;
	/**
		Optional override for formatting stack traces
	**/
	@:optional
	dynamic function prepareStackTrace(err:js.lib.Error, stackTraces:Array<global.nodejs.CallSite>):Dynamic;
	var stackTraceLimit : Float;
};