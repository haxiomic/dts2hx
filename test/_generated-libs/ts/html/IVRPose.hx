package ts.html;
/**
	This WebVR API interface represents the state of a VR sensor at a given timestamp (which includes orientation, position, velocity, and acceleration information.)
**/
typedef IVRPose = {
	final angularAcceleration : Null<ts.lib.Float32Array>;
	final angularVelocity : Null<ts.lib.Float32Array>;
	final linearAcceleration : Null<ts.lib.Float32Array>;
	final linearVelocity : Null<ts.lib.Float32Array>;
	final orientation : Null<ts.lib.Float32Array>;
	final position : Null<ts.lib.Float32Array>;
	final timestamp : Float;
};