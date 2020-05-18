package js.lib;

typedef ISharedArrayBuffer = {
	/**
		Read-only. The length of the ArrayBuffer (in bytes).
	**/
	final byteLength : Float;
	var length : Float;
	/**
		Returns a section of an SharedArrayBuffer.
	**/
	function slice(begin:Float, ?end:Float):SharedArrayBuffer;
};