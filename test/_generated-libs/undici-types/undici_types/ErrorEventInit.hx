package undici_types;

typedef ErrorEventInit = {
	@:optional
	var message : String;
	@:optional
	var filename : String;
	@:optional
	var lineno : Float;
	@:optional
	var colno : Float;
	@:optional
	var error : Dynamic;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};