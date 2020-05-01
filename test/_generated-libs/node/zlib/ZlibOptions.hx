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
	var dictionary : ts.AnyOf12<global.IBuffer, ts.lib.IUint8Array, ts.lib.IArrayBuffer, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>;
};