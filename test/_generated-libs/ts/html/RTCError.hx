package ts.html;
@:native("RTCError") extern class RTCError {
	function new(?errorDetail:String, ?message:String);
	var errorDetail : String;
	var httpRequestStatusCode : Float;
	var message : String;
	var name : String;
	var receivedAlert : Null<Float>;
	var sctpCauseCode : Float;
	var sdpLineNumber : Float;
	var sentAlert : Null<Float>;
	static var prototype : IRTCError;
}