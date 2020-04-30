package ts.lib;
@:native("AudioParamMap") extern class AudioParamMap {
	function new();
	function forEach(callbackfn:(value:IAudioParam, key:String, parent:IAudioParamMap) -> Void, ?thisArg:Any):Void;
	static var prototype : IAudioParamMap;
}