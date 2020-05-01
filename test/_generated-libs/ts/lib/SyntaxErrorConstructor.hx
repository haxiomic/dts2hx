package ts.lib;
typedef SyntaxErrorConstructor = {
	@:selfCall
	function call(?message:String):ISyntaxError;
	final prototype : ISyntaxError;
};