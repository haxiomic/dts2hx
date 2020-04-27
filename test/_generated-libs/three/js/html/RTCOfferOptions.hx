package js.html;
extern typedef RTCOfferOptions = RTCOfferAnswerOptions & { @:optional
	var iceRestart : Bool; @:optional
	var offerToReceiveAudio : Bool; @:optional
	var offerToReceiveVideo : Bool; };