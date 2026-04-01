package three;

@:jsRequire("three", "CompressedTextureLoader") extern class CompressedTextureLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var path : String;
	function load(url:String, onLoad:(texture:CompressedTexture) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
	function setPath(path:String):CompressedTextureLoader;
	static var prototype : CompressedTextureLoader;
}