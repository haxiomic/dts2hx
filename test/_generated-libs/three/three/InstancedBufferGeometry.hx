package three;
@:jsRequire("three", "InstancedBufferGeometry") extern class InstancedBufferGeometry extends BufferGeometry {
	function new();
	var groups : std.Array<{ var start : Float; var count : Float; var instances : Float; }>;
	var maxInstancedCount : Float;
	function addGroup(start:Float, count:Float, instances:Float):Void;
}