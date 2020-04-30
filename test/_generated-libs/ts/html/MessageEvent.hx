package ts.html;
/**
	A message received by a target object.
**/
@:native("MessageEvent") extern class MessageEvent {
	function new(type:String, ?eventInitDict:MessageEventInit);
	/**
		Returns the data of the message.
	**/
	final data : Any;
	/**
		Returns the last event ID string, for server-sent events.
	**/
	final lastEventId : String;
	/**
		Returns the origin of the message, for server-sent events and cross-document messaging.
	**/
	final origin : String;
	/**
		Returns the MessagePort array sent with the message, for cross-document messaging and channel messaging.
	**/
	final ports : ts.lib.ReadonlyArray<IMessagePort>;
	/**
		Returns the WindowProxy of the source window, for cross-document messaging, and the MessagePort being attached, in the connect event fired at SharedWorkerGlobalScope objects.
	**/
	final source : Null<haxe.extern.EitherType<IWindow, haxe.extern.EitherType<IMessagePort, IServiceWorker>>>;
	static var prototype : IMessageEvent;
}