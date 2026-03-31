package js.lib;

typedef FunctionConstructor = {
	/**
		Creates a new function.
	**/
	function new(args:haxe.extern.Rest<String>);
	@:selfCall
	function call(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
	final prototype : haxe.Constraints.Function;
};