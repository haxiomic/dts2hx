package ts.html;
@:native("MSPointerEvent") extern class MSPointerEvent {
	function new(typeArg:String, ?eventInitDict:PointerEventInit);
	final currentPoint : Any;
	final height : Float;
	final hwTimestamp : Float;
	final intermediatePoints : Any;
	final isPrimary : Bool;
	final pointerId : Float;
	final pointerType : Any;
	final pressure : Float;
	final rotation : Float;
	final tiltX : Float;
	final tiltY : Float;
	final width : Float;
	function getCurrentPoint(element:IElement):Void;
	function getIntermediatePoints(element:IElement):Void;
	function initPointerEvent(typeArg:String, canBubbleArg:Bool, cancelableArg:Bool, viewArg:IWindow, detailArg:Float, screenXArg:Float, screenYArg:Float, clientXArg:Float, clientYArg:Float, ctrlKeyArg:Bool, altKeyArg:Bool, shiftKeyArg:Bool, metaKeyArg:Bool, buttonArg:Float, relatedTargetArg:IEventTarget, offsetXArg:Float, offsetYArg:Float, widthArg:Float, heightArg:Float, pressure:Float, rotation:Float, tiltX:Float, tiltY:Float, pointerIdArg:Float, pointerType:Any, hwTimestampArg:Float, isPrimary:Bool):Void;
	static var prototype : IMSPointerEvent;
}