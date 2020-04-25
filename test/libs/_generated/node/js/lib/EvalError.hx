package js.lib;
@:native("EvalError") @:interface extern class EvalError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : Null<String>;
	@:selfCall
	static function call(?message:String):EvalError;
	static final prototype : EvalError;
}