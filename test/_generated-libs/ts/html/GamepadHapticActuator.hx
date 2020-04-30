package ts.html;
/**
	This Gamepad API interface represents hardware in the controller designed to provide haptic feedback to the user (if available), most commonly vibration hardware.
**/
@:native("GamepadHapticActuator") extern class GamepadHapticActuator {
	function new();
	final type : String;
	function pulse(value:Float, duration:Float):ts.lib.IPromise<Bool>;
	static var prototype : IGamepadHapticActuator;
}