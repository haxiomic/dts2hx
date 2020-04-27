package node.child_process;
extern interface ForkOptions extends ProcessEnvOptions {
	@:optional
	var execPath : String;
	@:optional
	var execArgv : std.Array<String>;
	@:optional
	var silent : Bool;
	@:optional
	var stdio : haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>;
	@:optional
	var detached : Bool;
	@:optional
	var windowsVerbatimArguments : Bool;
}