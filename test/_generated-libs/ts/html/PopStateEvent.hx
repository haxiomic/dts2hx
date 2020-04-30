package ts.html;
/**
	PopStateEvent is an event handler for the popstate event on the window.
**/
@:native("PopStateEvent") extern class PopStateEvent {
	function new(type:String, ?eventInitDict:PopStateEventInit);
	final state : Any;
	static var prototype : IPopStateEvent;
}