package global.three;

@:native("THREE.FileLoader") extern class FileLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var mimeType : js.html.MimeType;
	var path : String;
	var responseType : String;
	var withCredentials : String;
	function load(url:String, ?onLoad:(response:ts.AnyOf2<String, js.lib.ArrayBuffer>) -> Void, ?onProgress:(request:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Dynamic;
	function setMimeType(mimeType:js.html.MimeType):FileLoader;
	function setPath(path:String):FileLoader;
	function setResponseType(responseType:String):FileLoader;
	function setWithCredentials(value:String):FileLoader;
	function setRequestHeader(value:haxe.DynamicAccess<String>):FileLoader;
	static var prototype : FileLoader;
}