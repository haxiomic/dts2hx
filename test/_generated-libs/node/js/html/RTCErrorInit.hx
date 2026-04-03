package js.html;

typedef RTCErrorInit = {
	var errorDetail : RTCErrorDetailType;
	@:optional
	var httpRequestStatusCode : Float;
	@:optional
	var receivedAlert : Float;
	@:optional
	var sctpCauseCode : Float;
	@:optional
	var sdpLineNumber : Float;
	@:optional
	var sentAlert : Float;
};