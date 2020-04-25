package node.child_process;
extern interface SpawnSyncOptions extends CommonOptions {
	@:optional
	var argv0 : Null<String>;
	@:optional
	var input : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>;
	@:optional
	var stdio : Null<haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>>;
	@:optional
	var killSignal : Null<haxe.extern.EitherType<String, Float>>;
	@:optional
	var maxBuffer : Null<Float>;
	@:optional
	var encoding : Null<String>;
	@:optional
	var shell : Null<haxe.extern.EitherType<String, Bool>>;
	@:optional
	var windowsVerbatimArguments : Null<Bool>;
}