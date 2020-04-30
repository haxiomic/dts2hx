package ts.html;
/**
	A CloseEvent is sent to clients using WebSockets when the connection is closed. This is delivered to the listener indicated by the WebSocket object's onclose attribute.
**/
@:native("CloseEvent") extern class CloseEvent {
	function new(type:String, ?eventInitDict:CloseEventInit);
	final code : Float;
	final reason : String;
	final wasClean : Bool;
	function initCloseEvent(typeArg:String, canBubbleArg:Bool, cancelableArg:Bool, wasCleanArg:Bool, codeArg:Float, reasonArg:String):Void;
	static var prototype : ICloseEvent;
}