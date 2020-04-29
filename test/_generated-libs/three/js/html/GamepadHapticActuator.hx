package js.html;
/**
	This Gamepad API interface represents hardware in the controller designed to provide haptic feedback to the user (if available), most commonly vibration hardware.
**/
@:native("GamepadHapticActuator") extern class GamepadHapticActuator {
	function new();
	final type : String;
	function pulse(value:Float, duration:Float):js.lib.IPromise<Bool>;
	static var prototype : IGamepadHapticActuator;
}