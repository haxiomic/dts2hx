package three;
@:jsRequire("three", "CameraHelper") extern class CameraHelper extends LineSegments {
	function new(camera:Camera);
	var camera : Camera;
	var pointMap : { };
	function update():Void;
}