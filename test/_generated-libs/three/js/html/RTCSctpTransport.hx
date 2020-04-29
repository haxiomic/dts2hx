package js.html;
@:native("RTCSctpTransport") extern class RTCSctpTransport {
	function new();
	final maxChannels : Null<Float>;
	final maxMessageSize : Float;
	var onstatechange : Null<(ev:IEvent) -> Any>;
	final state : String;
	final transport : IRTCDtlsTransport;
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	static var prototype : IRTCSctpTransport;
}