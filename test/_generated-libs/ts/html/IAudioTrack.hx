package ts.html;
/**
	A single audio track from one of the HTML media elements, <audio> or <video>.
**/
extern typedef IAudioTrack = {
	var enabled : Bool;
	final id : String;
	var kind : String;
	final label : String;
	var language : String;
	final sourceBuffer : Null<ISourceBuffer>;
};