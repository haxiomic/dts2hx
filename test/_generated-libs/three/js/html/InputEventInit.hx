package js.html;
extern interface InputEventInit extends UIEventInit {
	@:optional
	var data : String;
	@:optional
	var inputType : String;
	@:optional
	var isComposing : Bool;
}