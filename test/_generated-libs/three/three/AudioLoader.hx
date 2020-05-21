package three;

@:jsRequire("three", "AudioLoader") extern class AudioLoader {
	function new(?manager:LoadingManager);
	function load(url:String, onLoad:haxe.Constraints.Function, onPrgress:haxe.Constraints.Function, onError:haxe.Constraints.Function):Void;
	static var prototype : AudioLoader;
}