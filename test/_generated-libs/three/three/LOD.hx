package three;
@:jsRequire("three", "LOD") extern class LOD extends Object3D {
	function new();
	var type : String;
	var levels : std.Array<{ var distance : Float; var object : Object3D; }>;
	function addLevel(object:Object3D, ?distance:Float):LOD;
	function getObjectForDistance(distance:Float):Object3D;
	function raycast(raycaster:Raycaster, intersects:std.Array<Intersection>):Void;
	function update(camera:Camera):Void;
	function toJSON(meta:Any):Any;
	var objects : std.Array<Any>;
}