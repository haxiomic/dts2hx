package three;

@:jsRequire("three", "Float64BufferAttribute") extern class Float64BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float, Dynamic, Dynamic>>, itemSize:Float, ?normalized:Bool);
	function clone():Float64BufferAttribute;
	function copy(source:BufferAttribute):Float64BufferAttribute;
	static var prototype : Float64BufferAttribute;
}