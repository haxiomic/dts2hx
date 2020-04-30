package three;
@:jsRequire("three", "AnimationLoader") extern class AnimationLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, ?onLoad:(response:haxe.extern.EitherType<String, ts.lib.IArrayBuffer>) -> Void, ?onProgress:(request:ts.html.IProgressEvent<ts.html.IEventTarget>) -> Void, ?onError:(event:ts.html.IErrorEvent) -> Void):Any;
	function parse(json:Any):std.Array<AnimationClip>;
	function setPath(path:String):AnimationLoader;
}