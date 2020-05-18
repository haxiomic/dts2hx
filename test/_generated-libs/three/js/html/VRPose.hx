package js.html;

/**
	This WebVR API interface represents the state of a VR sensor at a given timestamp (which includes orientation, position, velocity, and acceleration information.)
**/
@:native("VRPose") extern class VRPose {
	function new();
	final angularAcceleration : Null<js.lib.Float32Array>;
	final angularVelocity : Null<js.lib.Float32Array>;
	final linearAcceleration : Null<js.lib.Float32Array>;
	final linearVelocity : Null<js.lib.Float32Array>;
	final orientation : Null<js.lib.Float32Array>;
	final position : Null<js.lib.Float32Array>;
	final timestamp : Float;
	static var prototype : VRPose;
}