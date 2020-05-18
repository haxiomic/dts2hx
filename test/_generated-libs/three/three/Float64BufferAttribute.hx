package three;

@:jsRequire("three", "Float64BufferAttribute") extern class Float64BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, js.lib.Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Float64BufferAttribute;
	function copy(source:BufferAttribute):Float64BufferAttribute;
}