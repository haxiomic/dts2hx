package js.html;
extern interface MouseEventInit extends EventModifierInit {
	@:optional
	var button : Float;
	@:optional
	var buttons : Float;
	@:optional
	var clientX : Float;
	@:optional
	var clientY : Float;
	@:optional
	var movementX : Float;
	@:optional
	var movementY : Float;
	@:optional
	var relatedTarget : EventTarget;
	@:optional
	var screenX : Float;
	@:optional
	var screenY : Float;
}