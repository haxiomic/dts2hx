package js.html;
extern typedef MessageEventInit = {
	@:optional
	var data : Any;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : std.Array<IMessagePort>;
	@:optional
	var source : haxe.extern.EitherType<IWindow, haxe.extern.EitherType<IMessagePort, IServiceWorker>>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};