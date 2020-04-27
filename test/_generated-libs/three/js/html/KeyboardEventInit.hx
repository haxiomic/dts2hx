package js.html;
extern typedef KeyboardEventInit = EventModifierInit & { @:optional
	var code : String; @:optional
	var isComposing : Bool; @:optional
	var key : String; @:optional
	var location : Float; @:optional
	var repeat : Bool; };