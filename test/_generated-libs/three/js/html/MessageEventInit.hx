package js.html;
extern interface MessageEventInit extends EventInit {
	@:optional
	var data : Any;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : std.Array<MessagePort>;
	@:optional
	var source : haxe.extern.EitherType<Window, haxe.extern.EitherType<MessagePort, ServiceWorker>>;
}