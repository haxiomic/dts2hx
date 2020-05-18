package three;

@:jsRequire("three", "ImageBitmapLoader") extern class ImageBitmapLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function setOptions(options:Dynamic):ImageBitmapLoader;
	function load(url:String, ?onLoad:(response:ts.AnyOf2<String, js.lib.ArrayBuffer>) -> Void, ?onProgress:(request:js.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Dynamic;
	function setCrossOrigin():ImageBitmapLoader;
	function setPath(path:String):ImageBitmapLoader;
}