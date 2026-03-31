package js.lib;

typedef ArrayBufferConstructor = {
	function new(byteLength:Float);
	final prototype : js.lib.ArrayBuffer;
	function isView(arg:Dynamic):Bool;
};