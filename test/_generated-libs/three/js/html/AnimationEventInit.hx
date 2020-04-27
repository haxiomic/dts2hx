package js.html;
extern typedef AnimationEventInit = EventInit & { @:optional
	var animationName : String; @:optional
	var elapsedTime : Float; @:optional
	var pseudoElement : String; };