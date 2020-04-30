package ts.html;
/**
	This WebVR API interface represents the state of a VR sensor at a given timestamp (which includes orientation, position, velocity, and acceleration information.)
**/
@:native("VRPose") extern class VRPose {
	function new();
	final angularAcceleration : Null<ts.lib.IFloat32Array>;
	final angularVelocity : Null<ts.lib.IFloat32Array>;
	final linearAcceleration : Null<ts.lib.IFloat32Array>;
	final linearVelocity : Null<ts.lib.IFloat32Array>;
	final orientation : Null<ts.lib.IFloat32Array>;
	final position : Null<ts.lib.IFloat32Array>;
	final timestamp : Float;
	static var prototype : IVRPose;
}