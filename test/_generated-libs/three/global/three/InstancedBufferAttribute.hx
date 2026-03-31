package global.three;

@:native("THREE.InstancedBufferAttribute") extern class InstancedBufferAttribute extends BufferAttribute {
	function new(array:js.lib.ArrayLike<Float>, itemSize:Float, ?normalized:Bool, ?meshPerAttribute:Float);
	var meshPerAttribute : Float;
	static var prototype : InstancedBufferAttribute;
}