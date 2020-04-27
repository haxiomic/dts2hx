package js.html;
extern interface KeyboardEventInit extends EventModifierInit {
	@:optional
	var code : String;
	@:optional
	var isComposing : Bool;
	@:optional
	var key : String;
	@:optional
	var location : Float;
	@:optional
	var repeat : Bool;
}