package ts.lib;
typedef EvalErrorConstructor = {
	@:selfCall
	function call(?message:String):EvalError;
	final prototype : EvalError;
};