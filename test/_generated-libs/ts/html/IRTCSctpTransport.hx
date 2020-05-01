package ts.html;
extern typedef IRTCSctpTransport = {
	final maxChannels : Null<Float>;
	final maxMessageSize : Float;
	var onstatechange : Null<(ev:IEvent) -> Any>;
	final state : String;
	final transport : IRTCDtlsTransport;
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
};