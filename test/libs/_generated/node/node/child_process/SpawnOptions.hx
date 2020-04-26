package node.child_process;
extern interface SpawnOptions extends CommonOptions {
	@:optional
	var argv0 : String;
	@:optional
	var stdio : haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>;
	@:optional
	var detached : Bool;
	@:optional
	var shell : haxe.extern.EitherType<String, Bool>;
	@:optional
	var windowsVerbatimArguments : Bool;
}