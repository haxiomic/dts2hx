package ts.html;
/**
	This WebVR API interface represents all the information needed to render a single frame of a VR scene; constructed by VRDisplay.getFrameData().
**/
extern typedef IVRFrameData = {
	final leftProjectionMatrix : ts.lib.IFloat32Array;
	final leftViewMatrix : ts.lib.IFloat32Array;
	final pose : IVRPose;
	final rightProjectionMatrix : ts.lib.IFloat32Array;
	final rightViewMatrix : ts.lib.IFloat32Array;
	final timestamp : Float;
};