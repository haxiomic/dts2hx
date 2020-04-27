package js.html;
extern interface AddEventListenerOptions extends EventListenerOptions {
	@:optional
	var once : Bool;
	@:optional
	var passive : Bool;
}