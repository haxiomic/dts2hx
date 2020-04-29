package three;
@:jsRequire("three", "FileLoader") extern class FileLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var mimeType : js.html.IMimeType;
	var path : String;
	var responseType : String;
	var withCredentials : String;
	function load(url:String, ?onLoad:(response:haxe.extern.EitherType<String, js.lib.IArrayBuffer>) -> Void, ?onProgress:(request:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:js.html.IErrorEvent) -> Void):Any;
	function setMimeType(mimeType:js.html.IMimeType):FileLoader;
	function setPath(path:String):FileLoader;
	function setResponseType(responseType:String):FileLoader;
	function setWithCredentials(value:String):FileLoader;
	function setRequestHeader(value:{ }):FileLoader;
}