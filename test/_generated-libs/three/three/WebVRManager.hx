package three;

typedef WebVRManager = {
	var enabled : Bool;
	function getDevice():Dynamic;
	function setDevice(device:Dynamic):Void;
	function setPoseTarget(object:Null<Object3D>):Void;
	function getCamera(camera:PerspectiveCamera):ts.AnyOf2<PerspectiveCamera, ArrayCamera>;
	function submitFrame():Void;
	function dispose():Void;
};