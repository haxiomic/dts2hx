package js.html;
extern interface RTCPeerConnectionIceErrorEventInit extends EventInit {
	var errorCode : Float;
	@:optional
	var hostCandidate : String;
	@:optional
	var statusText : String;
	@:optional
	var url : String;
}