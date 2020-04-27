package three;
@:jsRequire("three", "ImageBitmapLoader") extern class ImageBitmapLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function setOptions(options:Any):ImageBitmapLoader;
	function load(url:String, ?onLoad:(response:haxe.extern.EitherType<String, js.lib.ArrayBuffer>) -> Void, ?onProgress:(request:js.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Any;
	function setCrossOrigin():ImageBitmapLoader;
	function setPath(path:String):ImageBitmapLoader;
}