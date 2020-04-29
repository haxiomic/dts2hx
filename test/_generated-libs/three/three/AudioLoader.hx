package three;
@:jsRequire("three", "AudioLoader") extern class AudioLoader {
	function new(?manager:LoadingManager);
	function load(url:String, onLoad:js.lib.IFunction, onPrgress:js.lib.IFunction, onError:js.lib.IFunction):Void;
}