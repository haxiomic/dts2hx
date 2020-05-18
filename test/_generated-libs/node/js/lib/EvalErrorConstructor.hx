package js.lib;

typedef EvalErrorConstructor = {
	@:selfCall
	function call(?message:String):js.lib.Error.EvalError;
	final prototype : js.lib.Error.EvalError;
};