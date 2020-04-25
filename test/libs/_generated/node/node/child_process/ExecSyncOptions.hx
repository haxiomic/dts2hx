package node.child_process;
extern interface ExecSyncOptions extends CommonOptions {
	@:optional
	var input : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>>>;
	@:optional
	var stdio : Null<haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>>;
	@:optional
	var shell : Null<String>;
	@:optional
	var killSignal : Null<haxe.extern.EitherType<String, Float>>;
	@:optional
	var maxBuffer : Null<Float>;
	@:optional
	var encoding : Null<String>;
}