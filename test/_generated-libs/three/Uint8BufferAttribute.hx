package three;
@:jsRequire("three", "Uint8BufferAttribute") extern class Uint8BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<ts.lib.IArrayBuffer, ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
}