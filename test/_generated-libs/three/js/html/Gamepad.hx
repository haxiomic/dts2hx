package js.html;
/**
	This Gamepad API interface defines an individual gamepad or other controller, allowing access to information such as button presses, axis positions, and id.
**/
@:native("Gamepad") @tsInterface extern class Gamepad {
	function new();
	final axes : js.lib.ReadonlyArray<Float>;
	final buttons : js.lib.ReadonlyArray<GamepadButton>;
	final connected : Bool;
	final hand : String;
	final hapticActuators : js.lib.ReadonlyArray<GamepadHapticActuator>;
	final id : String;
	final index : Float;
	final mapping : String;
	final pose : Null<GamepadPose>;
	final timestamp : Float;
	static var prototype : Gamepad;
}