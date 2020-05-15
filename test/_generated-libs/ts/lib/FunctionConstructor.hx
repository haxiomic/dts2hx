package ts.lib;
typedef FunctionConstructor = {
	@:selfCall
	function call(args:haxe.extern.Rest<String>):js.lib.Function;
	final prototype : js.lib.Function;
};