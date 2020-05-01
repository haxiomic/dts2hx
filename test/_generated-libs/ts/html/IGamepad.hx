package ts.html;
/**
	This Gamepad API interface defines an individual gamepad or other controller, allowing access to information such as button presses, axis positions, and id.
**/
typedef IGamepad = {
	final axes : ts.lib.ReadonlyArray<Float>;
	final buttons : ts.lib.ReadonlyArray<IGamepadButton>;
	final connected : Bool;
	final hand : String;
	final hapticActuators : ts.lib.ReadonlyArray<IGamepadHapticActuator>;
	final id : String;
	final index : Float;
	final mapping : String;
	final pose : Null<IGamepadPose>;
	final timestamp : Float;
};