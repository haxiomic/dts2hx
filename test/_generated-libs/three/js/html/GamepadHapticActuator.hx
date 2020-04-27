package js.html;
/**
	This Gamepad API interface represents hardware in the controller designed to provide haptic feedback to the user (if available), most commonly vibration hardware.
**/
@:native("GamepadHapticActuator") @tsInterface extern class GamepadHapticActuator {
	function new();
	final type : String;
	function pulse(value:Float, duration:Float):js.lib.Promise<Bool>;
	static var prototype : GamepadHapticActuator;
}