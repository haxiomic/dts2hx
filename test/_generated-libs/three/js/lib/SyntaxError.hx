package js.lib;
@:native("SyntaxError") extern class SyntaxError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):ISyntaxError;
	static final prototype : ISyntaxError;
}