package three;
@:jsRequire("three", "AudioLoader") extern class AudioLoader {
	function new(?manager:LoadingManager);
	function load(url:String, onLoad:ts.lib.IFunction, onPrgress:ts.lib.IFunction, onError:ts.lib.IFunction):Void;
}