package undici_types.mock_interceptor.mockinterceptor;

typedef MockResponseCallbackOptions = {
	var path : String;
	var method : String;
	@:optional
	var headers : ts.AnyOf2<haxe.DynamicAccess<String>, undici_types.Headers>;
	@:optional
	var origin : String;
	@:optional
	var body : ts.AnyOf21<String, js.lib.ArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, node.url.URLSearchParams, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>, node.stream.stream.Readable, node.buffer.Blob, global.Buffer<js.lib.ArrayBufferLike>, undici_types.FormData, js.lib.AsyncIterable<js.lib.Uint8Array_<js.lib.ArrayBufferLike>, Dynamic, Dynamic>, Iterable<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>>;
	@:optional
	var maxRedirections : Float;
};