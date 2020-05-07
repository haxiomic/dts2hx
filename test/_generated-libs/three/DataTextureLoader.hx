package three;
@:jsRequire("three", "DataTextureLoader") extern class DataTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, onLoad:(dataTexture:DataTexture) -> Void, ?onProgress:(event:ts.html.ProgressEvent<ts.html.EventTarget>) -> Void, ?onError:(event:ts.html.ErrorEvent) -> Void):Void;
}