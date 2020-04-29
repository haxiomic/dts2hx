package js.html;
/**
	This WebVR API interface represents the state of a VR sensor at a given timestamp (which includes orientation, position, velocity, and acceleration information.)
**/
extern typedef IVRPose = {
	final angularAcceleration : Null<js.lib.IFloat32Array>;
	final angularVelocity : Null<js.lib.IFloat32Array>;
	final linearAcceleration : Null<js.lib.IFloat32Array>;
	final linearVelocity : Null<js.lib.IFloat32Array>;
	final orientation : Null<js.lib.IFloat32Array>;
	final position : Null<js.lib.IFloat32Array>;
	final timestamp : Float;
};