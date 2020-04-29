package js.html;
extern typedef RTCConfiguration = {
	@:optional
	var bundlePolicy : String;
	@:optional
	var certificates : std.Array<IRTCCertificate>;
	@:optional
	var iceCandidatePoolSize : Float;
	@:optional
	var iceServers : std.Array<RTCIceServer>;
	@:optional
	var iceTransportPolicy : String;
	@:optional
	var peerIdentity : String;
	@:optional
	var rtcpMuxPolicy : String;
};