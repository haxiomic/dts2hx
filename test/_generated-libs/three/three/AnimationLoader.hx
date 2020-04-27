package three;
@:jsRequire("three", "AnimationLoader") extern class AnimationLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, ?onLoad:(response:haxe.extern.EitherType<String, js.lib.ArrayBuffer>) -> Void, ?onProgress:(request:js.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Any;
	function parse(json:Any):std.Array<AnimationClip>;
	function setPath(path:String):AnimationLoader;
}