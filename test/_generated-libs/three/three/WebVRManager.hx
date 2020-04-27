package three;
extern interface WebVRManager {
	var enabled : Bool;
	function getDevice():Null<js.lib.VRDisplay>;
	function setDevice(device:Null<js.lib.VRDisplay>):Void;
	function setPoseTarget(object:Null<Object3D>):Void;
	function getCamera(camera:PerspectiveCamera):haxe.extern.EitherType<PerspectiveCamera, ArrayCamera>;
	function submitFrame():Void;
	function dispose():Void;
}