package js.html;
/**
	This Gamepad API interface represents the pose of a WebVR controller at a given timestamp (which includes orientation, position, velocity, and acceleration information.)
**/
extern typedef IGamepadPose = {
	final angularAcceleration : Null<js.lib.IFloat32Array>;
	final angularVelocity : Null<js.lib.IFloat32Array>;
	final hasOrientation : Bool;
	final hasPosition : Bool;
	final linearAcceleration : Null<js.lib.IFloat32Array>;
	final linearVelocity : Null<js.lib.IFloat32Array>;
	final orientation : Null<js.lib.IFloat32Array>;
	final position : Null<js.lib.IFloat32Array>;
};