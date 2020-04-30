package ts.html;
/**
	An individual button of a gamepad or other controller, allowing access to the current state of different types of buttons available on the control device.
**/
extern typedef IGamepadButton = {
	final pressed : Bool;
	final touched : Bool;
	final value : Float;
};