package ts.html;
typedef ServiceWorkerMessageEventInit = {
	@:optional
	var data : Dynamic;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : Array<MessagePort>;
	@:optional
	var source : ts.AnyOf2<MessagePort, ServiceWorker>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};