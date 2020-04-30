package ts.html;
extern typedef PromiseRejectionEventInit = {
	var promise : ts.lib.IPromise<Any>;
	@:optional
	var reason : Any;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};