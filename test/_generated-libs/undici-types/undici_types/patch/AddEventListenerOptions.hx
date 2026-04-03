package undici_types.patch;

typedef AddEventListenerOptions = {
	@:optional
	var once : Bool;
	@:optional
	var passive : Bool;
	@:optional
	var signal : js.html.AbortSignal;
	@:optional
	var capture : Bool;
};