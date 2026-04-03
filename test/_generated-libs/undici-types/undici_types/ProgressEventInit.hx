package undici_types;

typedef ProgressEventInit = {
	@:optional
	var lengthComputable : Bool;
	@:optional
	var loaded : Float;
	@:optional
	var total : Float;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};