package js.html;
extern typedef RTCPeerConnectionIceErrorEventInit = {
	var errorCode : Float;
	@:optional
	var hostCandidate : String;
	@:optional
	var statusText : String;
	@:optional
	var url : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};