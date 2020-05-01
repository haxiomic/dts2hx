package ts.html;
extern typedef ErrorEventInit = {
	@:optional
	var colno : Float;
	@:optional
	var error : Dynamic;
	@:optional
	var filename : String;
	@:optional
	var lineno : Float;
	@:optional
	var message : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};