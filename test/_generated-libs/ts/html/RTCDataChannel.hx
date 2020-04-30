package ts.html;
@:native("RTCDataChannel") extern class RTCDataChannel {
	function new();
	var binaryType : String;
	final bufferedAmount : Float;
	var bufferedAmountLowThreshold : Float;
	final id : Null<Float>;
	final label : String;
	final maxPacketLifeTime : Null<Float>;
	final maxRetransmits : Null<Float>;
	final negotiated : Bool;
	var onbufferedamountlow : Null<(ev:IEvent) -> Any>;
	var onclose : Null<(ev:IEvent) -> Any>;
	var onerror : Null<(ev:IRTCErrorEvent) -> Any>;
	var onmessage : Null<(ev:IMessageEvent) -> Any>;
	var onopen : Null<(ev:IEvent) -> Any>;
	final ordered : Bool;
	final priority : String;
	final protocol : String;
	final readyState : String;
	function close():Void;
	@:overload(function(data:IBlob):Void { })
	@:overload(function(data:ts.lib.IArrayBuffer):Void { })
	@:overload(function(data:ts.lib.ArrayBufferView):Void { })
	function send(data:String):Void;
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
	function addEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<IEvent, haxe.extern.EitherType<IMessageEvent, IRTCErrorEvent>>) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<IEvent, haxe.extern.EitherType<IMessageEvent, IRTCErrorEvent>>) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	static var prototype : IRTCDataChannel;
}