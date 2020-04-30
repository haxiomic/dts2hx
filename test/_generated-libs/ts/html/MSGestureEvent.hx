package ts.html;
/**
	The MSGestureEvent is a proprietary interface specific to Internet Explorer and Microsoft Edge which represents events that occur due to touch gestures. Events using this interface include MSGestureStart, MSGestureEnd, MSGestureTap, MSGestureHold, MSGestureChange, and MSInertiaStart.
**/
@:native("MSGestureEvent") extern class MSGestureEvent {
	function new();
	final clientX : Float;
	final clientY : Float;
	final expansion : Float;
	final gestureObject : Any;
	final hwTimestamp : Float;
	final offsetX : Float;
	final offsetY : Float;
	final rotation : Float;
	final scale : Float;
	final screenX : Float;
	final screenY : Float;
	final translationX : Float;
	final translationY : Float;
	final velocityAngular : Float;
	final velocityExpansion : Float;
	final velocityX : Float;
	final velocityY : Float;
	function initGestureEvent(typeArg:String, canBubbleArg:Bool, cancelableArg:Bool, viewArg:IWindow, detailArg:Float, screenXArg:Float, screenYArg:Float, clientXArg:Float, clientYArg:Float, offsetXArg:Float, offsetYArg:Float, translationXArg:Float, translationYArg:Float, scaleArg:Float, expansionArg:Float, rotationArg:Float, velocityXArg:Float, velocityYArg:Float, velocityExpansionArg:Float, velocityAngularArg:Float, hwTimestampArg:Float):Void;
	final MSGESTURE_FLAG_BEGIN : Float;
	final MSGESTURE_FLAG_CANCEL : Float;
	final MSGESTURE_FLAG_END : Float;
	final MSGESTURE_FLAG_INERTIA : Float;
	final MSGESTURE_FLAG_NONE : Float;
	static var prototype : IMSGestureEvent;
	@:native("MSGESTURE_FLAG_BEGIN")
	static final MSGESTURE_FLAG_BEGIN_ : Float;
	@:native("MSGESTURE_FLAG_CANCEL")
	static final MSGESTURE_FLAG_CANCEL_ : Float;
	@:native("MSGESTURE_FLAG_END")
	static final MSGESTURE_FLAG_END_ : Float;
	@:native("MSGESTURE_FLAG_INERTIA")
	static final MSGESTURE_FLAG_INERTIA_ : Float;
	@:native("MSGESTURE_FLAG_NONE")
	static final MSGESTURE_FLAG_NONE_ : Float;
}