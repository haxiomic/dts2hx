package three;
@:jsRequire("three", "AnimationLoader") extern class AnimationLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, ?onLoad:(response:ts.AnyOf2<String, ts.lib.ArrayBuffer>) -> Void, ?onProgress:(request:ts.html.ProgressEvent<ts.html.EventTarget>) -> Void, ?onError:(event:ts.html.ErrorEvent) -> Void):Dynamic;
	function parse(json:Dynamic):Array<AnimationClip>;
	function setPath(path:String):AnimationLoader;
}