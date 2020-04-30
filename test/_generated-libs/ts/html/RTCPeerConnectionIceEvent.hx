package ts.html;
/**
	Events that occurs in relation to ICE candidates with the target, usually an RTCPeerConnection. Only one event is of this type: icecandidate.
**/
@:native("RTCPeerConnectionIceEvent") extern class RTCPeerConnectionIceEvent {
	function new(type:String, ?eventInitDict:RTCPeerConnectionIceEventInit);
	final candidate : Null<IRTCIceCandidate>;
	final url : Null<String>;
	static var prototype : IRTCPeerConnectionIceEvent;
}