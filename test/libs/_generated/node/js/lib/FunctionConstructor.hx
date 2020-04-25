package js.lib;
extern interface FunctionConstructor {
	@:selfCall
	function call(args:std.Array<String>):Function;
	final prototype : Function;
}