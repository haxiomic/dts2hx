package ts.html;
extern typedef RTCIceGatherOptions = {
	@:optional
	var gatherPolicy : String;
	@:optional
	var iceservers : std.Array<RTCIceServer>;
};