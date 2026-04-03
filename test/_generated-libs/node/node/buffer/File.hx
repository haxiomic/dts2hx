package node.buffer;

/**
	A [`File`](https://developer.mozilla.org/en-US/docs/Web/API/File) provides information about files.
**/
@:jsRequire("buffer", "File") extern class File extends Blob {
	function new(sources:Array<ts.AnyOf14<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>, Blob>>, fileName:String, ?options:FileOptions);
	/**
		The name of the `File`.
	**/
	final name : String;
	/**
		The last modified date of the `File`.
	**/
	final lastModified : Float;
	static var prototype : File;
}