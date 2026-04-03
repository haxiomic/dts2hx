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
	/**
		compression only
	**/
	@:optional
	var level : Float;
	/**
		compression only
	**/
	@:optional
	var memLevel : Float;
	/**
		compression only
	**/
	@:optional
	var strategy : Float;
	/**
		deflate/inflate only, empty dictionary by default
	**/
	@:optional
	var dictionary : ts.AnyOf13<js.lib.ArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>;
	/**
		If `true`, returns an object with `buffer` and `engine`.
	**/
	@:optional
	var info : Bool;
	/**
		Limits output size when using convenience methods.
	**/
	@:optional
	var maxOutputLength : Float;
};