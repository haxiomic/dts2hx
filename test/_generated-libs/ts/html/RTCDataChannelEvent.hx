package ts.html;
@:native("RTCDataChannelEvent") extern class RTCDataChannelEvent {
	function new(type:String, eventInitDict:RTCDataChannelEventInit);
	final channel : IRTCDataChannel;
	static var prototype : IRTCDataChannelEvent;
}