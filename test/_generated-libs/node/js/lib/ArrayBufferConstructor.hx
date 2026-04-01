package js.lib;

typedef ArrayBufferConstructor = {
	@:overload(function():js.lib.ArrayBuffer { })
	function new(byteLength:Float);
	final prototype : js.lib.ArrayBuffer;
	function isView(arg:Dynamic):Bool;
};