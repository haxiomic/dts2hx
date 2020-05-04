package ts.html;
typedef RTCIceGatherOptions = {
	@:optional
	var gatherPolicy : String;
	@:optional
	var iceservers : Array<RTCIceServer>;
};