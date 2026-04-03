package undici_types;

@:jsRequire("undici-types", "Response") extern class Response extends BodyMixin {
	function new(?body:ts.AnyOf19<String, js.lib.ArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, node.url.URLSearchParams, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>, node.buffer.Blob, FormData, js.lib.AsyncIterable<js.lib.Uint8Array_<js.lib.ArrayBufferLike>, Dynamic, Dynamic>, Iterable<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>>, ?init:ResponseInit);
	final headers : Headers;
	final ok : Bool;
	final status : Float;
	final statusText : String;
	final type : ResponseType;
	final url : String;
	final redirected : Bool;
	function clone():Response;
	static var prototype : Response;
	static function error():Response;
	static function json(data:Dynamic, ?init:ResponseInit):Response;
	static function redirect(url:ts.AnyOf2<String, node.url.URL>, status:ResponseRedirectStatus):Response;
}