package node.child_process;
extern interface ForkOptions extends ProcessEnvOptions {
	@:optional
	var execPath : Null<String>;
	@:optional
	var execArgv : Null<std.Array<String>>;
	@:optional
	var silent : Null<Bool>;
	@:optional
	var stdio : Null<haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>>;
	@:optional
	var detached : Null<Bool>;
	@:optional
	var windowsVerbatimArguments : Null<Bool>;
}