package js.html;
/**
	This Fetch API interface represents the response to a request.
**/
@:native("Response") @tsInterface extern class Response {
	function new(?body:haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<Blob, haxe.extern.EitherType<js.lib.FormData, haxe.extern.EitherType<js.lib.URLSearchParams, ReadableStream<js.lib.Uint8Array>>>>>>>, ?init:ResponseInit);
	final headers : js.lib.Headers;
	final ok : Bool;
	final redirected : Bool;
	final status : Float;
	final statusText : String;
	final trailer : js.lib.Promise<js.lib.Headers>;
	final type : String;
	final url : String;
	function clone():Response;
	final body : Null<ReadableStream<js.lib.Uint8Array>>;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	function blob():js.lib.Promise<Blob>;
	function formData():js.lib.Promise<js.lib.FormData>;
	function json():js.lib.Promise<Any>;
	function text():js.lib.Promise<String>;
	static var prototype : Response;
	static function error():Response;
	static function redirect(url:String, ?status:Float):Response;
}