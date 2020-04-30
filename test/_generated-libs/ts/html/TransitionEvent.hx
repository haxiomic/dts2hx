package ts.html;
/**
	Events providing information related to transitions.
**/
@:native("TransitionEvent") extern class TransitionEvent {
	function new(type:String, ?transitionEventInitDict:TransitionEventInit);
	final elapsedTime : Float;
	final propertyName : String;
	final pseudoElement : String;
	static var prototype : ITransitionEvent;
}