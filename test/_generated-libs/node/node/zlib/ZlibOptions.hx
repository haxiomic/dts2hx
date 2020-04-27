package node.zlib;
extern interface ZlibOptions {
	@:optional
	var flush : Float;
	@:optional
	var finishFlush : Float;
	@:optional
	var chunkSize : Float;
	@:optional
	var windowBits : Float;
	@:optional
	var level : Float;
	@:optional
	var memLevel : Float;
	@:optional
	var strategy : Float;
	@:optional
	var dictionary : haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>;
}