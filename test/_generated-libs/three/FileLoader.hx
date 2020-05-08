package three;
@:jsRequire("three", "FileLoader") extern class FileLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var mimeType : ts.html.MimeType;
	var path : String;
	var responseType : String;
	var withCredentials : String;
	function load(url:String, ?onLoad:(response:ts.AnyOf2<String, ts.lib.ArrayBuffer>) -> Void, ?onProgress:(request:ts.html.ProgressEvent<ts.html.EventTarget>) -> Void, ?onError:(event:ts.html.ErrorEvent) -> Void):Dynamic;
	function setMimeType(mimeType:ts.html.MimeType):FileLoader;
	function setPath(path:String):FileLoader;
	function setResponseType(responseType:String):FileLoader;
	function setWithCredentials(value:String):FileLoader;
	function setRequestHeader(value:{ }):FileLoader;
}