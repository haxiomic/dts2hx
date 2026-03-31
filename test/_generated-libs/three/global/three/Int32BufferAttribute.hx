package global.three;

@:native("THREE.Int32BufferAttribute") extern class Int32BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	static var prototype : Int32BufferAttribute;
}