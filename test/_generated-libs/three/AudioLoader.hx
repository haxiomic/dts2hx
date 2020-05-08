package three;
@:jsRequire("three", "AudioLoader") extern class AudioLoader {
	function new(?manager:LoadingManager);
	function load(url:String, onLoad:ts.lib.Function, onPrgress:ts.lib.Function, onError:ts.lib.Function):Void;
}