package js.lib;
@:native("SyntaxError") @tsInterface extern class SyntaxError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):SyntaxError;
	static final prototype : SyntaxError;
}