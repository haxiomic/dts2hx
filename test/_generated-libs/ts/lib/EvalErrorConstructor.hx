package ts.lib;
typedef EvalErrorConstructor = {
	@:selfCall
	function call(?message:String):IEvalError;
	final prototype : IEvalError;
};