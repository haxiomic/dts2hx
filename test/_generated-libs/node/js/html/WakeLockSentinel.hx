package js.html;

/**
	The **`WakeLockSentinel`** interface of the Screen Wake Lock API can be used to monitor the status of the platform screen wake lock, and manually release the lock when needed.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel)
**/
@:native("WakeLockSentinel") extern class WakeLockSentinel {
	function new();
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/release_event)
	**/
	@:optional
	dynamic function onrelease(ev:js.html.Event):Dynamic;
	/**
		The **`released`** read-only property of the WakeLockSentinel interface returns a boolean that indicates whether a WakeLockSentinel has been released.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/released)
	**/
	final released : Bool;
	/**
		The **`type`** read-only property of the WakeLockSentinel interface returns a string representation of the currently acquired WakeLockSentinel type.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/type)
	**/
	final type : String;
	/**
		The **`release()`** method of the WakeLockSentinel interface releases the WakeLockSentinel, returning a Promise that is resolved once the sentinel has been successfully released.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/release)
	**/
	function release():js.lib.Promise<ts.Undefined>;
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
	static var prototype : WakeLockSentinel;
}