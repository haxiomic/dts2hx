package undici_types;

typedef IWebSocket = {
	var binaryType : BinaryType;
	final bufferedAmount : Float;
	final extensions : String;
	@:optional
	dynamic function onclose(ev:CloseEvent):Dynamic;
	@:optional
	dynamic function onerror(ev:ErrorEvent):Dynamic;
	@:optional
	dynamic function onmessage(ev:MessageEvent<Dynamic>):Dynamic;
	@:optional
	dynamic function onopen(ev:js.html.Event):Dynamic;
	final protocol : String;
	final readyState : Float;
	final url : String;
	function close(?code:Float, ?reason:String):Void;
	function send(data:ts.AnyOf5<String, js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>, node.buffer.Blob>):Void;
	final CLOSED : Float;
	final CLOSING : Float;
	final CONNECTING : Float;
	final OPEN : Float;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	@:overload(function(type:String, listener:undici_types.patch.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, undici_types.patch.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, undici_types.patch.AddEventListenerOptions>):Void;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	@:overload(function(type:String, listener:undici_types.patch.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, undici_types.patch.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, undici_types.patch.EventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
};