package ts.html;
extern typedef PromiseRejectionEventInit = {
	var promise : ts.lib.IPromise<Dynamic>;
	@:optional
	var reason : Dynamic;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};