package three;
@:jsRequire("three", "DataTextureLoader") extern class DataTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, onLoad:(dataTexture:DataTexture) -> Void, ?onProgress:(event:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:js.html.IErrorEvent) -> Void):Void;
}