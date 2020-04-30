package ts.lib;
@:native("EvalError") extern class EvalError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):IEvalError;
	static final prototype : IEvalError;
}