package ts.lib;
extern typedef FunctionConstructor = {
	@:selfCall
	function call(args:std.Array<String>):IFunction;
	final prototype : IFunction;
};