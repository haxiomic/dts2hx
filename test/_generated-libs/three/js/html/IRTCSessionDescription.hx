package js.html;
/**
	One end of a connection—or potential connection—and how it's configured. Each RTCSessionDescription consists of a description type indicating which part of the offer/answer negotiation process it describes and of the SDP descriptor of the session.
**/
extern typedef IRTCSessionDescription = {
	final sdp : String;
	final type : String;
	function toJSON():Any;
};