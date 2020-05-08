package three;
@:jsRequire("three", "CompressedTextureLoader") extern class CompressedTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var path : String;
	function load(url:String, onLoad:(texture:CompressedTexture) -> Void, ?onProgress:(event:ts.html.ProgressEvent<ts.html.EventTarget>) -> Void, ?onError:(event:ts.html.ErrorEvent) -> Void):Void;
	function setPath(path:String):CompressedTextureLoader;
}