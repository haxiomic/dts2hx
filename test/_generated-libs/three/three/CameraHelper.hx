package three;

@:jsRequire("three", "CameraHelper") extern class CameraHelper extends LineSegments {
	function new(camera:Camera);
	var camera : Camera;
	var pointMap : haxe.DynamicAccess<Array<Float>>;
	function update():Void;
	function copy(source:CameraHelper, ?recursive:Bool):CameraHelper;
	static var prototype : CameraHelper;
}