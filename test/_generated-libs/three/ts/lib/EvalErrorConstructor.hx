package ts.lib;
extern typedef EvalErrorConstructor = {
	@:selfCall
	function call(?message:String):IEvalError;
	final prototype : IEvalError;
};