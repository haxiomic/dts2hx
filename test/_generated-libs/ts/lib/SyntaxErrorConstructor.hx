package ts.lib;
typedef SyntaxErrorConstructor = {
	@:selfCall
	function call(?message:String):SyntaxError;
	final prototype : SyntaxError;
};