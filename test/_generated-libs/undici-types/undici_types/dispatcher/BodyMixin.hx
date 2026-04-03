package undici_types.dispatcher;

typedef BodyMixin = {
	@:optional
	final body : Any;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	function blob():js.lib.Promise<node.buffer.Blob>;
	function bytes():js.lib.Promise<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>;
	function formData():js.lib.Promise<ts.Never>;
	function json():js.lib.Promise<Any>;
	function text():js.lib.Promise<String>;
};