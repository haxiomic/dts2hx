package ts.html;
/**
	This Gamepad API interface represents the pose of a WebVR controller at a given timestamp (which includes orientation, position, velocity, and acceleration information.)
**/
@:native("GamepadPose") extern class GamepadPose {
	function new();
	final angularAcceleration : Null<ts.lib.IFloat32Array>;
	final angularVelocity : Null<ts.lib.IFloat32Array>;
	final hasOrientation : Bool;
	final hasPosition : Bool;
	final linearAcceleration : Null<ts.lib.IFloat32Array>;
	final linearVelocity : Null<ts.lib.IFloat32Array>;
	final orientation : Null<ts.lib.IFloat32Array>;
	final position : Null<ts.lib.IFloat32Array>;
	static var prototype : IGamepadPose;
}