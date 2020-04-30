package ts.html;
/**
	The DOM CompositionEvent represents events that occur due to the user indirectly entering text.
**/
@:native("CompositionEvent") extern class CompositionEvent {
	function new(type:String, ?eventInitDict:CompositionEventInit);
	final data : String;
	static var prototype : ICompositionEvent;
}