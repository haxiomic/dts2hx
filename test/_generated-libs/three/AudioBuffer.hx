package three;
@:jsRequire("three", "AudioBuffer") extern class AudioBuffer {
	function new(context:Dynamic);
	var context : Dynamic;
	var ready : Bool;
	var readyCallbacks : std.Array<ts.lib.IFunction>;
	function load(file:String):AudioBuffer;
	function onReady(callback:ts.lib.IFunction):Void;
}