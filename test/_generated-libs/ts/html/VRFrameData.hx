package ts.html;
/**
	This WebVR API interface represents all the information needed to render a single frame of a VR scene; constructed by VRDisplay.getFrameData().
**/
@:native("VRFrameData") extern class VRFrameData {
	function new();
	final leftProjectionMatrix : ts.lib.Float32Array;
	final leftViewMatrix : ts.lib.Float32Array;
	final pose : VRPose;
	final rightProjectionMatrix : ts.lib.Float32Array;
	final rightViewMatrix : ts.lib.Float32Array;
	final timestamp : Float;
	static var prototype : VRFrameData;
}