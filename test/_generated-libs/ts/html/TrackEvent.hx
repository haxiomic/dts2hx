package ts.html;
/**
	The TrackEvent interface, part of the HTML DOM specification, is used for events which represent changes to the set of available tracks on an HTML media element; these events are addtrack and removetrack.
**/
@:native("TrackEvent") extern class TrackEvent {
	function new(typeArg:String, ?eventInitDict:TrackEventInit);
	final track : Null<ts.AnyOf3<IAudioTrack, ITextTrack, IVideoTrack>>;
	static var prototype : ITrackEvent;
}