package ts.html;
/**
	This Gamepad API interface represents the pose of a WebVR controller at a given timestamp (which includes orientation, position, velocity, and acceleration information.)
**/
@:native("GamepadPose") extern class GamepadPose {
	function new();
	final angularAcceleration : Null<ts.lib.Float32Array>;
	final angularVelocity : Null<ts.lib.Float32Array>;
	final hasOrientation : Bool;
	final hasPosition : Bool;
	final linearAcceleration : Null<ts.lib.Float32Array>;
	final linearVelocity : Null<ts.lib.Float32Array>;
	final orientation : Null<ts.lib.Float32Array>;
	final position : Null<ts.lib.Float32Array>;
	static var prototype : GamepadPose;
}