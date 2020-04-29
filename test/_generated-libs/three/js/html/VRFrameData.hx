package js.html;
/**
	This WebVR API interface represents all the information needed to render a single frame of a VR scene; constructed by VRDisplay.getFrameData().
**/
@:native("VRFrameData") extern class VRFrameData {
	function new();
	final leftProjectionMatrix : js.lib.IFloat32Array;
	final leftViewMatrix : js.lib.IFloat32Array;
	final pose : IVRPose;
	final rightProjectionMatrix : js.lib.IFloat32Array;
	final rightViewMatrix : js.lib.IFloat32Array;
	final timestamp : Float;
	static var prototype : IVRFrameData;
}