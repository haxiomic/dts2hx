package js.html;

/**
	The **`AbortSignal`** interface represents a signal object that allows you to communicate with an asynchronous operation (such as a fetch request) and abort it if required via an AbortController object.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal)
**/
typedef IAbortSignal = {
	/**
		The **`aborted`** read-only property returns a value that indicates whether the asynchronous operations the signal is communicating with are aborted (`true`) or not (`false`).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal/aborted)
	**/
	final aborted : Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal/abort_event)
	**/
	@:optional
	dynamic function onabort(ev:js.html.Event):Dynamic;
	/**
		The **`reason`** read-only property returns a JavaScript value that indicates the abort reason.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal/reason)
	**/
	final reason : Dynamic;
	/**
		The **`throwIfAborted()`** method throws the signal's abort AbortSignal.reason if the signal has been aborted; otherwise it does nothing.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal/throwIfAborted)
	**/
	function throwIfAborted():Void;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
};