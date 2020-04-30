package three;
@:jsRequire("three", "StereoCamera") extern class StereoCamera extends Camera {
	function new();
	var aspect : Float;
	var eyeSep : Float;
	var cameraL : PerspectiveCamera;
	var cameraR : PerspectiveCamera;
	function update(camera:PerspectiveCamera):Void;
}