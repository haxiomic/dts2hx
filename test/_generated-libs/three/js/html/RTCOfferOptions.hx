package js.html;
extern typedef RTCOfferOptions = {
	@:optional
	var iceRestart : Bool;
	@:optional
	var offerToReceiveAudio : Bool;
	@:optional
	var offerToReceiveVideo : Bool;
	@:optional
	var voiceActivityDetection : Bool;
};