package three;

@:jsRequire("three", "DataTextureLoader") extern class DataTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, onLoad:(dataTexture:DataTexture) -> Void, ?onProgress:(event:ts.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
}