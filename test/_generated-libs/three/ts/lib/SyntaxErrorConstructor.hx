package ts.lib;
extern typedef SyntaxErrorConstructor = {
	@:selfCall
	function call(?message:String):ISyntaxError;
	final prototype : ISyntaxError;
};