package ts.lib;
typedef FunctionConstructor = {
	@:selfCall
	function call(args:haxe.extern.Rest<String>):IFunction;
	final prototype : IFunction;
};