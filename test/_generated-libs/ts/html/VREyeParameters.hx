package ts.html;
/**
	This WebVR API interface represents all the information required to correctly render a scene for a given eye, including field of view information.
**/
@:native("VREyeParameters") extern class VREyeParameters {
	function new();
	final fieldOfView : IVRFieldOfView;
	final offset : ts.lib.IFloat32Array;
	final renderHeight : Float;
	final renderWidth : Float;
	static var prototype : IVREyeParameters;
}