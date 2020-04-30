package three;
extern typedef WebVRManager = {
	var enabled : Bool;
	function getDevice():Null<ts.lib.IVRDisplay>;
	function setDevice(device:Null<ts.lib.IVRDisplay>):Void;
	function setPoseTarget(object:Null<Object3D>):Void;
	function getCamera(camera:PerspectiveCamera):haxe.extern.EitherType<PerspectiveCamera, ArrayCamera>;
	function submitFrame():Void;
	function dispose():Void;
};