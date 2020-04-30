package ts.html;
/**
	Provides the API for creating and managing a WebSocket connection to a server, as well as for sending and receiving data on the connection.
**/
@:native("WebSocket") extern class WebSocket {
	function new(url:String, ?protocols:haxe.extern.EitherType<String, std.Array<String>>);
	var binaryType : String;
	final bufferedAmount : Float;
	final extensions : String;
	var onclose : Null<(ev:ICloseEvent) -> Any>;
	var onerror : Null<(ev:IEvent) -> Any>;
	var onmessage : Null<(ev:IMessageEvent) -> Any>;
	var onopen : Null<(ev:IEvent) -> Any>;
	final protocol : String;
	final readyState : Float;
	final url : String;
	function close(?code:Float, ?reason:String):Void;
	function send(data:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<IBlob, ts.lib.ArrayBufferView>>>):Void;
	final CLOSED : Float;
	final CLOSING : Float;
	final CONNECTING : Float;
	final OPEN : Float;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<IEvent, haxe.extern.EitherType<ICloseEvent, IMessageEvent>>) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<IEvent, haxe.extern.EitherType<ICloseEvent, IMessageEvent>>) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	static var prototype : IWebSocket;
	@:native("CLOSED")
	static final CLOSED_ : Float;
	@:native("CLOSING")
	static final CLOSING_ : Float;
	@:native("CONNECTING")
	static final CONNECTING_ : Float;
	@:native("OPEN")
	static final OPEN_ : Float;
}