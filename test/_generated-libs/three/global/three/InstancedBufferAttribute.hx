package global.three;

@:native("THREE.InstancedBufferAttribute") extern class InstancedBufferAttribute extends BufferAttribute {
	function new(array:js.lib.ArrayLike<Float>, itemSize:Float, ?normalized:Bool, ?meshPerAttribute:Float);
	var meshPerAttribute : Float;
	function clone():InstancedBufferAttribute;
	function copy(source:BufferAttribute):InstancedBufferAttribute;
	static var prototype : InstancedBufferAttribute;
}