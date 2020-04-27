package js.html;
/**
	The RTCIceCandidate interface—part of the WebRTC API—represents a candidate Internet Connectivity Establishment (ICE) configuration which may be used to establish an RTCPeerConnection.
**/
@:native("RTCIceCandidate") @tsInterface extern class RTCIceCandidate {
	function new(?candidateInitDict:RTCIceCandidateInit);
	final candidate : String;
	final component : Null<String>;
	final foundation : Null<String>;
	final ip : Null<String>;
	final port : Null<Float>;
	final priority : Null<Float>;
	final protocol : Null<String>;
	final relatedAddress : Null<String>;
	final relatedPort : Null<Float>;
	final sdpMLineIndex : Null<Float>;
	final sdpMid : Null<String>;
	final tcpType : Null<String>;
	final type : Null<String>;
	final usernameFragment : Null<String>;
	function toJSON():RTCIceCandidateInit;
	static var prototype : RTCIceCandidate;
}