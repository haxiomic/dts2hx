package ts.html;
@:native("RTCErrorEvent") extern class RTCErrorEvent {
	function new(type:String, eventInitDict:RTCErrorEventInit);
	final error : Null<IRTCError>;
	static var prototype : IRTCErrorEvent;
}