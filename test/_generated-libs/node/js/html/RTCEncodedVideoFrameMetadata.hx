package js.html;

typedef RTCEncodedVideoFrameMetadata = {
	@:optional
	var dependencies : Array<Float>;
	@:optional
	var frameId : Float;
	@:optional
	var height : Float;
	@:optional
	var spatialIndex : Float;
	@:optional
	var temporalIndex : Float;
	@:optional
	var timestamp : Float;
	@:optional
	var width : Float;
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