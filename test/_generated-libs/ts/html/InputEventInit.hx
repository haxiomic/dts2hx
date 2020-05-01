package ts.html;
typedef InputEventInit = {
	@:optional
	var data : String;
	@:optional
	var inputType : String;
	@:optional
	var isComposing : Bool;
	@:optional
	var detail : Float;
	@:optional
	var view : IWindow;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};