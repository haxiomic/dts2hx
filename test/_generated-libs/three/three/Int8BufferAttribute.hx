package three;

@:jsRequire("three", "Int8BufferAttribute") extern class Int8BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Int8BufferAttribute;
	function copy(source:BufferAttribute):Int8BufferAttribute;
	static var prototype : Int8BufferAttribute;
}