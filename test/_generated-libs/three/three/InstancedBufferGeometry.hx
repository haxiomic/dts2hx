package three;

@:jsRequire("three", "InstancedBufferGeometry") extern class InstancedBufferGeometry extends BufferGeometry {
	function new();
	var maxInstancedCount : Float;
	function addGroup(start:Float, count:Float, instances:Float):Void;
	static var prototype : InstancedBufferGeometry;
}