package undici_types;

@:jsRequire("undici-types", "File") extern class File extends node.buffer.Blob {
	/**
		Creates a new File instance.
	**/
	function new(fileBits:haxe.ds.ReadOnlyArray<ts.AnyOf14<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>, node.buffer.Blob>>, fileName:String, ?options:FilePropertyBag);
	/**
		Name of the file referenced by the File object.
	**/
	final name : String;
	/**
		The last modified date of the file as the number of milliseconds since the Unix epoch (January 1, 1970 at midnight). Files without a known last modified date return the current date.
	**/
	final lastModified : Float;
	static var prototype : File;
}