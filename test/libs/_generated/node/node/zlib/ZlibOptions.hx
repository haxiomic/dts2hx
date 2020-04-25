package node.zlib;
extern interface ZlibOptions {
	@:optional
	var flush : Null<Float>;
	@:optional
	var finishFlush : Null<Float>;
	@:optional
	var chunkSize : Null<Float>;
	@:optional
	var windowBits : Null<Float>;
	@:optional
	var level : Null<Float>;
	@:optional
	var memLevel : Null<Float>;
	@:optional
	var strategy : Null<Float>;
	@:optional
	var dictionary : Null<haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>;
}