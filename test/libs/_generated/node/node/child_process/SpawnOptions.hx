package node.child_process;
extern interface SpawnOptions extends CommonOptions {
	@:optional
	var argv0 : Null<String>;
	@:optional
	var stdio : Null<haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>>;
	@:optional
	var detached : Null<Bool>;
	@:optional
	var shell : Null<haxe.extern.EitherType<String, Bool>>;
	@:optional
	var windowsVerbatimArguments : Null<Bool>;
}