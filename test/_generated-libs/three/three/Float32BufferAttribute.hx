package three;

@:jsRequire("three", "Float32BufferAttribute") extern class Float32BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	static var prototype : Float32BufferAttribute;
}