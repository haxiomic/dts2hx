package three;
@:jsRequire("three", "ImageBitmapLoader") extern class ImageBitmapLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function setOptions(options:Dynamic):ImageBitmapLoader;
	function load(url:String, ?onLoad:(response:ts.AnyOf2<String, ts.lib.ArrayBuffer>) -> Void, ?onProgress:(request:ts.html.ProgressEvent<ts.html.EventTarget>) -> Void, ?onError:(event:ts.html.ErrorEvent) -> Void):Dynamic;
	function setCrossOrigin():ImageBitmapLoader;
	function setPath(path:String):ImageBitmapLoader;
}