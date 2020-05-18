package js.lib;

typedef SyntaxErrorConstructor = {
	@:selfCall
	function call(?message:String):js.lib.Error.SyntaxError;
	final prototype : js.lib.Error.SyntaxError;
};