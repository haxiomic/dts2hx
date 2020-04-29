package js.html;
extern typedef VRDisplayEventInit = {
	var display : js.lib.IVRDisplay;
	@:optional
	var reason : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};