package undici_types.default_;

@:jsRequire("undici-types", "default.Response") extern class Response {
	function new(?body:ts.AnyOf19<String, js.lib.ArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, node.url.URLSearchParams, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>, node.buffer.Blob, undici_types.FormData, js.lib.AsyncIterable<js.lib.Uint8Array_<js.lib.ArrayBufferLike>, Dynamic, Dynamic>, Iterable<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>>, ?init:undici_types.ResponseInit);
	static var prototype : undici_types.Response;
	static function error():undici_types.Response;
	static function json(data:Dynamic, ?init:undici_types.ResponseInit):undici_types.Response;
	static function redirect(url:ts.AnyOf2<String, node.url.URL>, status:undici_types.ResponseRedirectStatus):undici_types.Response;
}