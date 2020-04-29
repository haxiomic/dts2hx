package node.zlib;
extern typedef ZlibOptions = {
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
	var dictionary : haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, js.lib.IDataView>>>>>>>>>>>;
};