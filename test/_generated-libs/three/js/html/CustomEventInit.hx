package js.html;
extern interface CustomEventInit<T> extends EventInit {
	@:optional
	var detail : T;
}