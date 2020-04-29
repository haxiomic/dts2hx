package js.html;
/**
	This Fetch API interface represents the response to a request.
**/
@:native("Response") extern class Response {
	function new(?body:haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<IBlob, haxe.extern.EitherType<js.lib.IFormData, haxe.extern.EitherType<js.lib.IURLSearchParams, IReadableStream<js.lib.IUint8Array>>>>>>>, ?init:ResponseInit);
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
	static var prototype : IResponse;
	static function error():IResponse;
	static function redirect(url:String, ?status:Float):IResponse;
}