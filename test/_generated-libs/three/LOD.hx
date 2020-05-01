package three;
@:jsRequire("three", "LOD") extern class LOD extends Object3D {
	function new();
	var levels : std.Array<{
		var distance : Float;
		var object : Object3D;
	}>;
	function addLevel(object:Object3D, ?distance:Float):LOD;
	function getObjectForDistance(distance:Float):Object3D;
	function update(camera:Camera):Void;
	var objects : std.Array<Dynamic>;
}