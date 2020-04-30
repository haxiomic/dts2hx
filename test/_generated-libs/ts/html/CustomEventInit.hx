package ts.html;
extern typedef CustomEventInit<T> = {
	@:optional
	var detail : T;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};