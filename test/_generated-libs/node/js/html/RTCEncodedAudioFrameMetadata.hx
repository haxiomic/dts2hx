package js.html;

typedef RTCEncodedAudioFrameMetadata = {
	@:optional
	var sequenceNumber : Float;
	@:optional
	var contributingSources : Array<Float>;
	@:optional
	var mimeType : String;
	@:optional
	var payloadType : Float;
	@:optional
	var rtpTimestamp : Float;
	@:optional
	var synchronizationSource : Float;
};