package js.lib;

typedef SyntaxErrorConstructor = {
	@:overload(function(?message:String):js.lib.Error { })
	@:selfCall
	function call(?message:String):js.lib.Error.SyntaxError;
	final prototype : js.lib.Error.SyntaxError;
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