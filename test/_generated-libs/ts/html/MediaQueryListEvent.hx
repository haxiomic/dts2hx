package ts.html;
@:native("MediaQueryListEvent") extern class MediaQueryListEvent {
	function new(type:String, ?eventInitDict:MediaQueryListEventInit);
	final matches : Bool;
	final media : String;
	static var prototype : IMediaQueryListEvent;
}