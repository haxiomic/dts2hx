package ts.html;
typedef HashChangeEventInit = {
	@:optional
	var newURL : String;
	@:optional
	var oldURL : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};