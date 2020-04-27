package js.html;
extern typedef ErrorEventInit = EventInit & { @:optional
	var colno : Float; @:optional
	var error : Any; @:optional
	var filename : String; @:optional
	var lineno : Float; @:optional
	var message : String; };