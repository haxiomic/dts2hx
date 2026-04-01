package global.three;

@:native("THREE.Float64BufferAttribute") extern class Float64BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Float64BufferAttribute;
	function copy(source:BufferAttribute):Float64BufferAttribute;
	static var prototype : Float64BufferAttribute;
}