package js.lib;

typedef DataViewConstructor = {
	function new<TArrayBuffer:(ts.AnyOf2<IArrayBuffer & {
		@:optional
		var BYTES_PER_ELEMENT : Any;
	}, ISharedArrayBuffer & {
		@:optional
		var BYTES_PER_ELEMENT : Any;
	}>)>(buffer:TArrayBuffer, ?byteOffset:Float, ?byteLength:Float);
	final prototype : DataView_<ArrayBufferLike>;
};