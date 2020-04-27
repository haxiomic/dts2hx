package js.html;
extern typedef CloseEventInit = EventInit & { @:optional
	var code : Float; @:optional
	var reason : String; @:optional
	var wasClean : Bool; };