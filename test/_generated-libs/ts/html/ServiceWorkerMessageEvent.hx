package ts.html;
/**
	This ServiceWorker API interface contains information about an event sent to a ServiceWorkerContainer target. This extends the default message event to allow setting a ServiceWorker object as the source of a message. The event object is accessed via the handler function of a message event, when fired by a message received from a service worker.
**/
@:native("ServiceWorkerMessageEvent") extern class ServiceWorkerMessageEvent {
	function new(type:String, ?eventInitDict:ServiceWorkerMessageEventInit);
	final data : Any;
	final lastEventId : String;
	final origin : String;
	final ports : Null<ts.lib.ReadonlyArray<IMessagePort>>;
	final source : Null<ts.AnyOf2<IMessagePort, IServiceWorker>>;
	static var prototype : IServiceWorkerMessageEvent;
}