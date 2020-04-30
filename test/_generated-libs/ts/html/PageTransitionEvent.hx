package ts.html;
/**
	The PageTransitionEvent is fired when a document is being loaded or unloaded.
**/
@:native("PageTransitionEvent") extern class PageTransitionEvent {
	function new();
	final persisted : Bool;
	static var prototype : IPageTransitionEvent;
}