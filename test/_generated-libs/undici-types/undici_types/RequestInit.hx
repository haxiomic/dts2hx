package undici_types;

typedef RequestInit = {
	@:optional
	var method : String;
	@:optional
	var keepalive : Bool;
	@:optional
	var headers : HeadersInit;
	@:optional
	var body : ts.AnyOf19<String, js.lib.ArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, node.url.URLSearchParams, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>, node.buffer.Blob, FormData, js.lib.AsyncIterable<js.lib.Uint8Array_<js.lib.ArrayBufferLike>, Dynamic, Dynamic>, Iterable<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>>;
	@:optional
	var redirect : RequestRedirect;
	@:optional
	var integrity : String;
	@:optional
	var signal : js.html.AbortSignal;
	@:optional
	var credentials : RequestCredentials;
	@:optional
	var mode : RequestMode;
	@:optional
	var referrer : String;
	@:optional
	var referrerPolicy : ReferrerPolicy;
	@:optional
	var window : ts.Never;
	@:optional
	var dispatcher : Dispatcher;
	@:optional
	var duplex : String;
};