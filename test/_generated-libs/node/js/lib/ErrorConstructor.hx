package js.lib;
extern typedef ErrorConstructor = { @:selfCall
	function call(?message:String):Error; final prototype : Error; /**
		Create .stack property on a target object
	**/
	function captureStackTrace(targetObject:Object, ?constructorOpt:Function):Void; /**
		Optional override for formatting stack traces
	**/
	@:optional
	var prepareStackTrace : (err:Error, stackTraces:std.Array<global.nodejs.CallSite>) -> Any; var stackTraceLimit : Float; };