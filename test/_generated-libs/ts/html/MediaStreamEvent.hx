package ts.html;
/**
	Events that occurs in relation to a MediaStream. Two events of this type can be thrown: addstream and removestream.
**/
@:native("MediaStreamEvent") extern class MediaStreamEvent {
	function new(type:String, eventInitDict:MediaStreamEventInit);
	final stream : Null<IMediaStream>;
	static var prototype : IMediaStreamEvent;
}