package js.html;
/**
	A single video track from a <video> element.
**/
@:native("VideoTrack") @tsInterface extern class VideoTrack {
	function new();
	final id : String;
	var kind : String;
	final label : String;
	var language : String;
	var selected : Bool;
	final sourceBuffer : Null<SourceBuffer>;
	static var prototype : VideoTrack;
}