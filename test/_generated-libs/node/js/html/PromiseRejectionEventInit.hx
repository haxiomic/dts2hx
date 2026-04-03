package js.html;

typedef PromiseRejectionEventInit = {
	var promise : js.lib.Promise<Dynamic>;
	@:optional
	var reason : Dynamic;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};