package node.zlib;

typedef ZlibOptions = {
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
	var dictionary : ts.AnyOf12<js.lib.ArrayBuffer, js.lib.DataView, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, global.Buffer>;
};