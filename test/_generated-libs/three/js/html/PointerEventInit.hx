package js.html;
extern interface PointerEventInit extends MouseEventInit {
	@:optional
	var height : Float;
	@:optional
	var isPrimary : Bool;
	@:optional
	var pointerId : Float;
	@:optional
	var pointerType : String;
	@:optional
	var pressure : Float;
	@:optional
	var tangentialPressure : Float;
	@:optional
	var tiltX : Float;
	@:optional
	var tiltY : Float;
	@:optional
	var twist : Float;
	@:optional
	var width : Float;
}