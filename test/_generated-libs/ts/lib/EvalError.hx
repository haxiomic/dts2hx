package ts.lib;
@:native("EvalError") extern class EvalError {
	function new(?message:String);
	@:selfCall
	static function call(?message:String):IEvalError;
	static final prototype : IEvalError;
}