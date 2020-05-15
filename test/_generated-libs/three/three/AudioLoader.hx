package three;
@:jsRequire("three", "AudioLoader") extern class AudioLoader {
	function new(?manager:LoadingManager);
	function load(url:String, onLoad:js.lib.Function, onPrgress:js.lib.Function, onError:js.lib.Function):Void;
}