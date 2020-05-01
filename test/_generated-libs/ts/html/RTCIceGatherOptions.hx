package ts.html;
typedef RTCIceGatherOptions = {
	@:optional
	var gatherPolicy : String;
	@:optional
	var iceservers : std.Array<RTCIceServer>;
};