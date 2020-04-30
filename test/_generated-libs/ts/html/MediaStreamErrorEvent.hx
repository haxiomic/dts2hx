package ts.html;
@:native("MediaStreamErrorEvent") extern class MediaStreamErrorEvent {
	function new(typeArg:String, ?eventInitDict:MediaStreamErrorEventInit);
	final error : Null<IMediaStreamError>;
	static var prototype : IMediaStreamErrorEvent;
}