package js.html;
/**
	A single audio track from one of the HTML media elements, <audio> or <video>.
**/
@:native("AudioTrack") extern class AudioTrack {
	function new();
	var enabled : Bool;
	final id : String;
	var kind : String;
	final label : String;
	var language : String;
	final sourceBuffer : Null<ISourceBuffer>;
	static var prototype : IAudioTrack;
}