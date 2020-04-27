package three;
@:jsRequire("three", "AudioBuffer") extern class AudioBuffer {
	function new(context:Any);
	var context : Any;
	var ready : Bool;
	var readyCallbacks : std.Array<js.lib.Function>;
	function load(file:String):AudioBuffer;
	function onReady(callback:js.lib.Function):Void;
}