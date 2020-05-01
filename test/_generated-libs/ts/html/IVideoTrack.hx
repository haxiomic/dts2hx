package ts.html;
/**
	A single video track from a <video> element.
**/
typedef IVideoTrack = {
	final id : String;
	var kind : String;
	final label : String;
	var language : String;
	var selected : Bool;
	final sourceBuffer : Null<ISourceBuffer>;
};