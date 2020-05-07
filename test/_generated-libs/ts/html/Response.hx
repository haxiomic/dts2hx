package ts.html;
/**
	This Fetch API interface represents the response to a request.
**/
@:native("Response") extern class Response {
	function new(?body:ts.AnyOf7<String, ts.lib.ArrayBuffer, Blob, FormData, URLSearchParams, ts.lib.ArrayBufferView, ReadableStream<ts.lib.Uint8Array>>, ?init:ResponseInit);
	final headers : Headers;
	final ok : Bool;
	final redirected : Bool;
	final status : Float;
	final statusText : String;
	final trailer : ts.lib.Promise<Headers>;
	final type : ResponseType;
	final url : String;
	function clone():Response;
	final body : Null<ReadableStream<ts.lib.Uint8Array>>;
	final bodyUsed : Bool;
	function arrayBuffer():ts.lib.Promise<ts.lib.ArrayBuffer>;
	function blob():ts.lib.Promise<Blob>;
	function formData():ts.lib.Promise<FormData>;
	function json():ts.lib.Promise<Dynamic>;
	function text():ts.lib.Promise<String>;
	static var prototype : Response;
	static function error():Response;
	static function redirect(url:String, ?status:Float):Response;
}