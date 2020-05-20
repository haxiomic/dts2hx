package global.three;

typedef WebVRManager = {
	var enabled : Bool;
	function getDevice():Null<js.html.VRDisplay>;
	function setDevice(device:Null<js.html.VRDisplay>):Void;
	function setPoseTarget(object:Null<Object3D>):Void;
	function getCamera(camera:PerspectiveCamera):ts.AnyOf2<PerspectiveCamera, ArrayCamera>;
	function submitFrame():Void;
	function dispose():Void;
};