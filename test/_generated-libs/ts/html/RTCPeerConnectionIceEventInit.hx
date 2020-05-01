package ts.html;
typedef RTCPeerConnectionIceEventInit = {
	@:optional
	var candidate : IRTCIceCandidate;
	@:optional
	var url : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};