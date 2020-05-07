package ts.lib;
typedef FunctionConstructor = {
	@:selfCall
	function call(args:haxe.extern.Rest<String>):Function;
	final prototype : Function;
};