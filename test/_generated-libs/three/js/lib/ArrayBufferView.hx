package js.lib;
extern typedef ArrayBufferView = {
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	var buffer : IArrayBuffer;
	/**
		The length in bytes of the array.
	**/
	var byteLength : Float;
	/**
		The offset in bytes of the array.
	**/
	var byteOffset : Float;
};