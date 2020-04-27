package js.html;
extern interface PromiseRejectionEventInit extends EventInit {
	var promise : js.lib.Promise<Any>;
	@:optional
	var reason : Any;
}