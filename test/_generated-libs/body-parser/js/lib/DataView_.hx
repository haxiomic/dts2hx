package js.lib;

@:native("DataView") extern class DataView_<TArrayBuffer:(ArrayBufferLike)> {
	function new<TArrayBuffer:(ts.AnyOf2<IArrayBuffer & {
		@:optional
		var BYTES_PER_ELEMENT : Any;
	}, ISharedArrayBuffer & {
		@:optional
		var BYTES_PER_ELEMENT : Any;
	}>)>(buffer:TArrayBuffer, ?byteOffset:Float, ?byteLength:Float);
	final buffer : TArrayBuffer;
	final byteLength : Float;
	final byteOffset : Float;
	/**
		Gets the Float32 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getFloat32(byteOffset:Float, ?littleEndian:Bool):Float;
	/**
		Gets the Float64 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getFloat64(byteOffset:Float, ?littleEndian:Bool):Float;
	/**
		Gets the Int8 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getInt8(byteOffset:Float):Float;
	/**
		Gets the Int16 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getInt16(byteOffset:Float, ?littleEndian:Bool):Float;
	/**
		Gets the Int32 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getInt32(byteOffset:Float, ?littleEndian:Bool):Float;
	/**
		Gets the Uint8 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getUint8(byteOffset:Float):Float;
	/**
		Gets the Uint16 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getUint16(byteOffset:Float, ?littleEndian:Bool):Float;
	/**
		Gets the Uint32 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getUint32(byteOffset:Float, ?littleEndian:Bool):Float;
	/**
		Stores an Float32 value at the specified byte offset from the start of the view.
	**/
	function setFloat32(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	/**
		Stores an Float64 value at the specified byte offset from the start of the view.
	**/
	function setFloat64(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	/**
		Stores an Int8 value at the specified byte offset from the start of the view.
	**/
	function setInt8(byteOffset:Float, value:Float):Void;
	/**
		Stores an Int16 value at the specified byte offset from the start of the view.
	**/
	function setInt16(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	/**
		Stores an Int32 value at the specified byte offset from the start of the view.
	**/
	function setInt32(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	/**
		Stores an Uint8 value at the specified byte offset from the start of the view.
	**/
	function setUint8(byteOffset:Float, value:Float):Void;
	/**
		Stores an Uint16 value at the specified byte offset from the start of the view.
	**/
	function setUint16(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	/**
		Stores an Uint32 value at the specified byte offset from the start of the view.
	**/
	function setUint32(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	/**
		Gets the BigInt64 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getBigInt64(byteOffset:Float, ?littleEndian:Bool):ts.BigInt;
	/**
		Gets the BigUint64 value at the specified byte offset from the start of the view. There is
		no alignment constraint; multi-byte values may be fetched from any offset.
	**/
	function getBigUint64(byteOffset:Float, ?littleEndian:Bool):ts.BigInt;
	/**
		Stores a BigInt64 value at the specified byte offset from the start of the view.
	**/
	function setBigInt64(byteOffset:Float, value:ts.BigInt, ?littleEndian:Bool):Void;
	/**
		Stores a BigUint64 value at the specified byte offset from the start of the view.
	**/
	function setBigUint64(byteOffset:Float, value:ts.BigInt, ?littleEndian:Bool):Void;
	static final prototype : DataView_<ArrayBufferLike>;
}