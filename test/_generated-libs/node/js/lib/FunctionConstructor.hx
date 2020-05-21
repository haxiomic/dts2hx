package js.lib;

typedef FunctionConstructor = {
	@:selfCall
	function call(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
	final prototype : haxe.Constraints.Function;
};