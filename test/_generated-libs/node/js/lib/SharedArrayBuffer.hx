package js.lib;

@:native("SharedArrayBuffer") extern class SharedArrayBuffer {
	function new(byteLength:Float);
	/**
		Read-only. The length of the ArrayBuffer (in bytes).
	**/
	final byteLength : Float;
	var length : Float;
	/**
		Returns a section of an SharedArrayBuffer.
	**/
	function slice(begin:Float, ?end:Float):SharedArrayBuffer;
	static final prototype : SharedArrayBuffer;
}