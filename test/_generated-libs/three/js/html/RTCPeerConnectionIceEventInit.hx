package js.html;
extern interface RTCPeerConnectionIceEventInit extends EventInit {
	@:optional
	var candidate : RTCIceCandidate;
	@:optional
	var url : String;
}