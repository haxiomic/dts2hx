package js.html;
extern typedef PromiseRejectionEventInit = {
	var promise : js.lib.IPromise<Any>;
	@:optional
	var reason : Any;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};