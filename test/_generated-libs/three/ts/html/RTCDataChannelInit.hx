package ts.html;
extern typedef RTCDataChannelInit = {
	@:optional
	var id : Float;
	@:optional
	var maxPacketLifeTime : Float;
	@:optional
	var maxRetransmits : Float;
	@:optional
	var negotiated : Bool;
	@:optional
	var ordered : Bool;
	@:optional
	var priority : String;
	@:optional
	var protocol : String;
};