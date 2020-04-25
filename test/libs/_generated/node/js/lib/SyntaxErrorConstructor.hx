package js.lib;
extern interface SyntaxErrorConstructor {
	@:selfCall
	function call(?message:String):SyntaxError;
	final prototype : SyntaxError;
}