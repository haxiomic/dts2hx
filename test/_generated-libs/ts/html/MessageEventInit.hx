package ts.html;
typedef MessageEventInit = {
	@:optional
	var data : Dynamic;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : std.Array<IMessagePort>;
	@:optional
	var source : ts.AnyOf3<IWindow, IMessagePort, IServiceWorker>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};