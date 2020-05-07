package ts.html;
typedef MessageEventInit = {
	@:optional
	var data : Dynamic;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : Array<MessagePort>;
	@:optional
	var source : ts.AnyOf3<Window, MessagePort, ServiceWorker>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};