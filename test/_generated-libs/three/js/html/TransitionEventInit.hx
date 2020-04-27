package js.html;
extern typedef TransitionEventInit = EventInit & { @:optional
	var elapsedTime : Float; @:optional
	var propertyName : String; @:optional
	var pseudoElement : String; };