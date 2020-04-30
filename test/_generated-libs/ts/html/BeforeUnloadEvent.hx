package ts.html;
/**
	The beforeunload event is fired when the window, the document and its resources are about to be unloaded.
**/
@:native("BeforeUnloadEvent") extern class BeforeUnloadEvent {
	function new();
	var returnValue : Any;
	static var prototype : IBeforeUnloadEvent;
}