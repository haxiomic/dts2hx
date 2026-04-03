package undici_types;

typedef CloseEventInit = {
	@:optional
	var code : Float;
	@:optional
	var reason : String;
	@:optional
	var wasClean : Bool;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};