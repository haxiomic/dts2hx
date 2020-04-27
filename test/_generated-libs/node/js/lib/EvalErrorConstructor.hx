package js.lib;
extern interface EvalErrorConstructor {
	@:selfCall
	function call(?message:String):EvalError;
	final prototype : EvalError;
}