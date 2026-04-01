package three;

@:jsRequire("three", "Int16BufferAttribute") extern class Int16BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Int16BufferAttribute;
	function copy(source:BufferAttribute):Int16BufferAttribute;
	static var prototype : Int16BufferAttribute;
}