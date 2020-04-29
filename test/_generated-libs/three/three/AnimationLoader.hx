package three;
@:jsRequire("three", "AnimationLoader") extern class AnimationLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, ?onLoad:(response:haxe.extern.EitherType<String, js.lib.IArrayBuffer>) -> Void, ?onProgress:(request:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:js.html.IErrorEvent) -> Void):Any;
	function parse(json:Any):std.Array<AnimationClip>;
	function setPath(path:String):AnimationLoader;
}