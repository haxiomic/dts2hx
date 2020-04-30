package ts.lib;
@:native("SyntaxError") extern class SyntaxError {
	function new(?message:String);
	@:selfCall
	static function call(?message:String):ISyntaxError;
	static final prototype : ISyntaxError;
}