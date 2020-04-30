package ts.html;
/**
	Events providing information related to animations.
**/
@:native("AnimationEvent") extern class AnimationEvent {
	function new(type:String, ?animationEventInitDict:AnimationEventInit);
	final animationName : String;
	final elapsedTime : Float;
	final pseudoElement : String;
	static var prototype : IAnimationEvent;
}