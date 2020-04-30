package ts.html;
/**
	Events which indicate that a MediaStream has had tracks added to or removed from the stream through calls to Media Stream API methods. These events are sent to the stream when these changes occur.
**/
@:native("MediaStreamTrackEvent") extern class MediaStreamTrackEvent {
	function new(type:String, eventInitDict:MediaStreamTrackEventInit);
	final track : IMediaStreamTrack;
	static var prototype : IMediaStreamTrackEvent;
}