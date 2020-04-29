package js.html;
/**
	This Fetch API interface represents the response to a request.
**/
extern typedef IResponse = {
	final headers : js.lib.IHeaders;
	final ok : Bool;
	final redirected : Bool;
	final status : Float;
	final statusText : String;
	final trailer : js.lib.IPromise<js.lib.IHeaders>;
	final type : String;
	final url : String;
	function clone():IResponse;
	final body : Null<IReadableStream<js.lib.IUint8Array>>;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.IPromise<js.lib.IArrayBuffer>;
	function blob():js.lib.IPromise<IBlob>;
	function formData():js.lib.IPromise<js.lib.IFormData>;
	function json():js.lib.IPromise<Any>;
	function text():js.lib.IPromise<String>;
};