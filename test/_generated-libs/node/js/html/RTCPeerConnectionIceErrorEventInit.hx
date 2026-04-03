package js.html;

typedef RTCPeerConnectionIceErrorEventInit = {
	@:optional
	var address : String;
	var errorCode : Float;
	@:optional
	var errorText : String;
	@:optional
	var port : Float;
	@:optional
	var url : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};