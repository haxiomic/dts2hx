package three;
@:jsRequire("three", "Int32BufferAttribute") extern class Int32BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<ts.lib.IArrayBuffer, ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Int32BufferAttribute;
	function copy(source:BufferAttribute):Int32BufferAttribute;
}