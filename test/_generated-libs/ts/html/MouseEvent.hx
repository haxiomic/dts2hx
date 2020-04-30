package ts.html;
/**
	Events that occur due to the user interacting with a pointing device (such as a mouse). Common events using this interface include click, dblclick, mouseup, mousedown.
**/
@:native("MouseEvent") extern class MouseEvent {
	function new(type:String, ?eventInitDict:MouseEventInit);
	final altKey : Bool;
	final button : Float;
	final buttons : Float;
	final clientX : Float;
	final clientY : Float;
	final ctrlKey : Bool;
	final metaKey : Bool;
	final movementX : Float;
	final movementY : Float;
	final offsetX : Float;
	final offsetY : Float;
	final pageX : Float;
	final pageY : Float;
	final relatedTarget : Null<IEventTarget>;
	final screenX : Float;
	final screenY : Float;
	final shiftKey : Bool;
	final x : Float;
	final y : Float;
	function getModifierState(keyArg:String):Bool;
	function initMouseEvent(typeArg:String, canBubbleArg:Bool, cancelableArg:Bool, viewArg:IWindow, detailArg:Float, screenXArg:Float, screenYArg:Float, clientXArg:Float, clientYArg:Float, ctrlKeyArg:Bool, altKeyArg:Bool, shiftKeyArg:Bool, metaKeyArg:Bool, buttonArg:Float, relatedTargetArg:Null<IEventTarget>):Void;
	static var prototype : IMouseEvent;
}