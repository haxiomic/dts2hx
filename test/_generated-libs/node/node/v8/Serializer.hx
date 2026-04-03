package node.v8;

@:jsRequire("v8", "Serializer") extern class Serializer {
	function new();
	/**
		Writes out a header, which includes the serialization format version.
	**/
	function writeHeader():Void;
	/**
		Serializes a JavaScript value and adds the serialized representation to the
		internal buffer.
		
		This throws an error if `value` cannot be serialized.
	**/
	function writeValue(val:Dynamic):Bool;
	/**
		Returns the stored internal buffer. This serializer should not be used once
		the buffer is released. Calling this method results in undefined behavior
		if a previous write has failed.
	**/
	function releaseBuffer():node.buffer.NonSharedBuffer;
	/**
		Marks an `ArrayBuffer` as having its contents transferred out of band.
		Pass the corresponding `ArrayBuffer` in the deserializing context to `deserializer.transferArrayBuffer()`.
	**/
	function transferArrayBuffer(id:Float, arrayBuffer:js.lib.ArrayBuffer):Void;
	/**
		Write a raw 32-bit unsigned integer.
		For use inside of a custom `serializer._writeHostObject()`.
	**/
	function writeUint32(value:Float):Void;
	/**
		Write a raw 64-bit unsigned integer, split into high and low 32-bit parts.
		For use inside of a custom `serializer._writeHostObject()`.
	**/
	function writeUint64(hi:Float, lo:Float):Void;
	/**
		Write a JS `number` value.
		For use inside of a custom `serializer._writeHostObject()`.
	**/
	function writeDouble(value:Float):Void;
	/**
		Write raw bytes into the serializer's internal buffer. The deserializer
		will require a way to compute the length of the buffer.
		For use inside of a custom `serializer._writeHostObject()`.
	**/
	function writeRawBytes(buffer:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>):Void;
	static var prototype : Serializer;
}