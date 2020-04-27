package js.html;
extern typedef InputEventInit = UIEventInit & { @:optional
	var data : String; @:optional
	var inputType : String; @:optional
	var isComposing : Bool; };