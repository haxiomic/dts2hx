package three;
@:jsRequire("three", "Int16BufferAttribute") extern class Int16BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<ts.lib.ArrayBuffer, ts.lib.ArrayLike<Float>, ts.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Int16BufferAttribute;
	function copy(source:BufferAttribute):Int16BufferAttribute;
}