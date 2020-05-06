package three;
@:jsRequire("three", "Uint8ClampedBufferAttribute") extern class Uint8ClampedBufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<ts.lib.IArrayBuffer, ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Uint8ClampedBufferAttribute;
	function copy(source:BufferAttribute):Uint8ClampedBufferAttribute;
}