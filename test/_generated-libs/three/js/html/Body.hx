package js.html;
extern interface Body {
	final body : Null<ReadableStream<js.lib.Uint8Array>>;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	function blob():js.lib.Promise<Blob>;
	function formData():js.lib.Promise<js.lib.FormData>;
	function json():js.lib.Promise<Any>;
	function text():js.lib.Promise<String>;
}