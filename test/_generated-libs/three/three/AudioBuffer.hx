package three;
@:jsRequire("three", "AudioBuffer") extern class AudioBuffer {
	function new(context:Dynamic);
	var context : Dynamic;
	var ready : Bool;
	var readyCallbacks : Array<js.lib.Function>;
	function load(file:String):AudioBuffer;
	function onReady(callback:js.lib.Function):Void;
}