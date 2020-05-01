package three;
@:jsRequire("three", "Uint16BufferAttribute") extern class Uint16BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<ts.lib.IArrayBuffer, ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
}