package ts.html;
typedef IRTCError = {
	var errorDetail : String;
	var httpRequestStatusCode : Float;
	var message : String;
	var name : String;
	var receivedAlert : Null<Float>;
	var sctpCauseCode : Float;
	var sdpLineNumber : Float;
	var sentAlert : Null<Float>;
	@:optional
	var stack : String;
};