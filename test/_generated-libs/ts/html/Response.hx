package ts.html;
/**
	This Fetch API interface represents the response to a request.
**/
@:native("Response") extern class Response {
	function new(?body:ts.AnyOf7<String, ts.lib.IArrayBuffer, IBlob, ts.lib.IFormData, ts.lib.IURLSearchParams, ts.lib.ArrayBufferView, IReadableStream<ts.lib.IUint8Array>>, ?init:ResponseInit);
	final headers : ts.lib.IHeaders;
	final ok : Bool;
	final redirected : Bool;
	final status : Float;
	final statusText : String;
	final trailer : ts.lib.IPromise<ts.lib.IHeaders>;
	final type : String;
	final url : String;
	function clone():IResponse;
	final body : Null<IReadableStream<ts.lib.IUint8Array>>;
	final bodyUsed : Bool;
	function arrayBuffer():ts.lib.IPromise<ts.lib.IArrayBuffer>;
	function blob():ts.lib.IPromise<IBlob>;
	function formData():ts.lib.IPromise<ts.lib.IFormData>;
	function json():ts.lib.IPromise<Dynamic>;
	function text():ts.lib.IPromise<String>;
	static var prototype : IResponse;
	static function error():IResponse;
	static function redirect(url:String, ?status:Float):IResponse;
}