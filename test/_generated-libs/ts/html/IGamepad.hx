package ts.html;
/**
	This Gamepad API interface defines an individual gamepad or other controller, allowing access to information such as button presses, axis positions, and id.
**/
typedef IGamepad = {
	final axes : ts.lib.ReadonlyArray<Float>;
	final buttons : ts.lib.ReadonlyArray<GamepadButton>;
	final connected : Bool;
	final hand : GamepadHand;
	final hapticActuators : ts.lib.ReadonlyArray<GamepadHapticActuator>;
	final id : String;
	final index : Float;
	final mapping : GamepadMappingType;
	final pose : Null<GamepadPose>;
	final timestamp : Float;
};