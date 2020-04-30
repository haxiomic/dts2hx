package ts.html;
@:native("RTCPeerConnectionIceErrorEvent") extern class RTCPeerConnectionIceErrorEvent {
	function new(type:String, eventInitDict:RTCPeerConnectionIceErrorEventInit);
	final errorCode : Float;
	final errorText : String;
	final hostCandidate : String;
	final url : String;
	static var prototype : IRTCPeerConnectionIceErrorEvent;
}