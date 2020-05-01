package three;
@:jsRequire("three", "Int16BufferAttribute") extern class Int16BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<ts.lib.IArrayBuffer, ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
}