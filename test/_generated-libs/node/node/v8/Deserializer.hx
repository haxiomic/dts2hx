package node.v8;

@:jsRequire("v8", "Deserializer") extern class Deserializer {
	function new(data:global.nodejs.TypedArray<js.lib.ArrayBufferLike>);
	/**
		Reads and validates a header (including the format version).
		May, for example, reject an invalid or unsupported wire format. In that case,
		an `Error` is thrown.
	**/
	function readHeader():Bool;
	/**
		Deserializes a JavaScript value from the buffer and returns it.
	**/
	function readValue():Dynamic;
	/**
		Marks an `ArrayBuffer` as having its contents transferred out of band.
		Pass the corresponding `ArrayBuffer` in the serializing context to `serializer.transferArrayBuffer()` (or return the `id` from `serializer._getSharedArrayBufferId()` in the case of
		`SharedArrayBuffer`s).
	**/
	function transferArrayBuffer(id:Float, arrayBuffer:js.lib.ArrayBuffer):Void;
	/**
		Reads the underlying wire format version. Likely mostly to be useful to
		legacy code reading old wire format versions. May not be called before `.readHeader()`.
	**/
	function getWireFormatVersion():Float;
	/**
		Read a raw 32-bit unsigned integer and return it.
		For use inside of a custom `deserializer._readHostObject()`.
	**/
	function readUint32():Float;
	/**
		Read a raw 64-bit unsigned integer and return it as an array `[hi, lo]` with two 32-bit unsigned integer entries.
		For use inside of a custom `deserializer._readHostObject()`.
	**/
	function readUint64():ts.Tuple2<Float, Float>;
	/**
		Read a JS `number` value.
		For use inside of a custom `deserializer._readHostObject()`.
	**/
	function readDouble():Float;
	/**
		Read raw bytes from the deserializer's internal buffer. The `length` parameter
		must correspond to the length of the buffer that was passed to `serializer.writeRawBytes()`.
		For use inside of a custom `deserializer._readHostObject()`.
	**/
	function readRawBytes(length:Float):node.buffer.Buffer<js.lib.ArrayBufferLike>;
	static var prototype : Deserializer;
}