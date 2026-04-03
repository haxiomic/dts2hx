package js.lib;

typedef ArrayBufferView_<TArrayBuffer:(ArrayBufferLike)> = {
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	final buffer : TArrayBuffer;
	/**
		The length in bytes of the array.
	**/
	final byteLength : Float;
	/**
		The offset in bytes of the array.
	**/
	final byteOffset : Float;
};