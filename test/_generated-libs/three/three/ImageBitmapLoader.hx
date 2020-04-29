package three;
@:jsRequire("three", "ImageBitmapLoader") extern class ImageBitmapLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function setOptions(options:Any):ImageBitmapLoader;
	function load(url:String, ?onLoad:(response:haxe.extern.EitherType<String, js.lib.IArrayBuffer>) -> Void, ?onProgress:(request:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:js.html.IErrorEvent) -> Void):Any;
	function setCrossOrigin():ImageBitmapLoader;
	function setPath(path:String):ImageBitmapLoader;
}