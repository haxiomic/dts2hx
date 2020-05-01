package ts.html;
typedef VRDisplayEventInit = {
	var display : ts.lib.IVRDisplay;
	@:optional
	var reason : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};