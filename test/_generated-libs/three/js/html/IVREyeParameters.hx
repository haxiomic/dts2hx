package js.html;
/**
	This WebVR API interface represents all the information required to correctly render a scene for a given eye, including field of view information.
**/
extern typedef IVREyeParameters = {
	final fieldOfView : IVRFieldOfView;
	final offset : js.lib.IFloat32Array;
	final renderHeight : Float;
	final renderWidth : Float;
};