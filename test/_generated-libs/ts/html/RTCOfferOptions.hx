package ts.html;
typedef RTCOfferOptions = {
	@:optional
	var iceRestart : Bool;
	@:optional
	var offerToReceiveAudio : Bool;
	@:optional
	var offerToReceiveVideo : Bool;
	@:optional
	var voiceActivityDetection : Bool;
};