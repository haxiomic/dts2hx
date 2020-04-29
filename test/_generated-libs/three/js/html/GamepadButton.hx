package js.html;
/**
	An individual button of a gamepad or other controller, allowing access to the current state of different types of buttons available on the control device.
**/
@:native("GamepadButton") extern class GamepadButton {
	function new();
	final pressed : Bool;
	final touched : Bool;
	final value : Float;
	static var prototype : IGamepadButton;
}