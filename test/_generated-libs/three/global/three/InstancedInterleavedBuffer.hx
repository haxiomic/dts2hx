package global.three;

@:native("THREE.InstancedInterleavedBuffer") extern class InstancedInterleavedBuffer extends InterleavedBuffer {
	function new(array:js.lib.ArrayLike<Float>, stride:Float, ?meshPerAttribute:Float);
	var meshPerAttribute : Float;
	static var prototype : InstancedInterleavedBuffer;
}