package ts.html;
/**
	Events that occur due to the user moving a mouse wheel or similar input device.
**/
@:native("WheelEvent") extern class WheelEvent {
	function new(type:String, ?eventInitDict:WheelEventInit);
	final deltaMode : Float;
	final deltaX : Float;
	final deltaY : Float;
	final deltaZ : Float;
	final DOM_DELTA_LINE : Float;
	final DOM_DELTA_PAGE : Float;
	final DOM_DELTA_PIXEL : Float;
	static var prototype : IWheelEvent;
	@:native("DOM_DELTA_LINE")
	static final DOM_DELTA_LINE_ : Float;
	@:native("DOM_DELTA_PAGE")
	static final DOM_DELTA_PAGE_ : Float;
	@:native("DOM_DELTA_PIXEL")
	static final DOM_DELTA_PIXEL_ : Float;
}