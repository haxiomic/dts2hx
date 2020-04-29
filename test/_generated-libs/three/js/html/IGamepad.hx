package js.html;
/**
	This Gamepad API interface defines an individual gamepad or other controller, allowing access to information such as button presses, axis positions, and id.
**/
extern typedef IGamepad = {
	final axes : js.lib.ReadonlyArray<Float>;
	final buttons : js.lib.ReadonlyArray<IGamepadButton>;
	final connected : Bool;
	final hand : String;
	final hapticActuators : js.lib.ReadonlyArray<IGamepadHapticActuator>;
	final id : String;
	final index : Float;
	final mapping : String;
	final pose : Null<IGamepadPose>;
	final timestamp : Float;
};