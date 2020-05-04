package ts.html;
typedef RTCConfiguration = {
	@:optional
	var bundlePolicy : String;
	@:optional
	var certificates : Array<IRTCCertificate>;
	@:optional
	var iceCandidatePoolSize : Float;
	@:optional
	var iceServers : Array<RTCIceServer>;
	@:optional
	var iceTransportPolicy : String;
	@:optional
	var peerIdentity : String;
	@:optional
	var rtcpMuxPolicy : String;
};