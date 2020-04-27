package js.html;
extern interface VRDisplayEventInit extends EventInit {
	var display : js.lib.VRDisplay;
	@:optional
	var reason : String;
}