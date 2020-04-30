package ts.html;
/**
	An event sent when the state of contacts with a touch-sensitive surface changes. This surface can be a touch screen or trackpad, for example. The event can describe one or more points of contact with the screen and includes support for detecting movement, addition and removal of contact points, and so forth.
**/
@:native("TouchEvent") extern class TouchEvent {
	function new(type:String, ?eventInitDict:TouchEventInit);
	final altKey : Bool;
	final changedTouches : ts.lib.ITouchList;
	final ctrlKey : Bool;
	final metaKey : Bool;
	final shiftKey : Bool;
	final targetTouches : ts.lib.ITouchList;
	final touches : ts.lib.ITouchList;
	static var prototype : ITouchEvent;
}