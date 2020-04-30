package ts.html;
/**
	This Gamepad API interface contains references to gamepads connected to the system, which is what the gamepad events Window.gamepadconnected and Window.gamepaddisconnected are fired in response to.
**/
@:native("GamepadEvent") extern class GamepadEvent {
	function new(type:String, eventInitDict:GamepadEventInit);
	final gamepad : IGamepad;
	static var prototype : IGamepadEvent;
}