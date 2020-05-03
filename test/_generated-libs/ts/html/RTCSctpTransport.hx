package ts.html;
@:native("RTCSctpTransport") extern class RTCSctpTransport {
	function new();
	final maxChannels : Null<Float>;
	final maxMessageSize : Float;
	var onstatechange : Null<(ev:IEvent) -> Dynamic>;
	final state : RTCSctpTransportState;
	final transport : IRTCDtlsTransport;
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	static var prototype : IRTCSctpTransport;
}