package ts.html;
/**
	The state of a DOM event produced by a pointer such as the geometry of the contact point, the device type that generated the event, the amount of pressure that was applied on the contact surface, etc.
**/
@:native("PointerEvent") extern class PointerEvent {
	function new(type:String, ?eventInitDict:PointerEventInit);
	final height : Float;
	final isPrimary : Bool;
	final pointerId : Float;
	final pointerType : String;
	final pressure : Float;
	final tangentialPressure : Float;
	final tiltX : Float;
	final tiltY : Float;
	final twist : Float;
	final width : Float;
	static var prototype : IPointerEvent;
}