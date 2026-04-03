package node.events.eventemitter;

/**
	The `NodeEventTarget` is a Node.js-specific extension to `EventTarget`
	that emulates a subset of the `EventEmitter` API.
**/
typedef NodeEventTarget = {
	/**
		Node.js-specific extension to the `EventTarget` class that emulates the
		equivalent `EventEmitter` API. The only difference between `addListener()` and
		`addEventListener()` is that `addListener()` will return a reference to the
		`EventTarget`.
	**/
	function addListener(type:String, listener:(arg:Dynamic) -> Void):NodeEventTarget;
	/**
		Node.js-specific extension to the `EventTarget` class that dispatches the
		`arg` to the list of handlers for `type`.
	**/
	function emit(type:String, arg:Dynamic):Bool;
	/**
		Node.js-specific extension to the `EventTarget` class that returns an array
		of event `type` names for which event listeners are registered.
	**/
	function eventNames():Array<String>;
	/**
		Node.js-specific extension to the `EventTarget` class that returns the number
		of event listeners registered for the `type`.
	**/
	function listenerCount(type:String):Float;
	/**
		Node.js-specific extension to the `EventTarget` class that sets the number
		of max event listeners as `n`.
	**/
	function setMaxListeners(n:Float):Void;
	/**
		Node.js-specific extension to the `EventTarget` class that returns the number
		of max event listeners.
	**/
	function getMaxListeners():Float;
	/**
		Node.js-specific alias for `eventTarget.removeEventListener()`.
	**/
	function off(type:String, listener:(arg:Dynamic) -> Void, ?options:js.html.EventListenerOptions):NodeEventTarget;
	/**
		Node.js-specific alias for `eventTarget.addEventListener()`.
	**/
	function on(type:String, listener:(arg:Dynamic) -> Void):NodeEventTarget;
	/**
		Node.js-specific extension to the `EventTarget` class that adds a `once`
		listener for the given event `type`. This is equivalent to calling `on`
		with the `once` option set to `true`.
	**/
	function once(type:String, listener:(arg:Dynamic) -> Void):NodeEventTarget;
	/**
		Node.js-specific extension to the `EventTarget` class. If `type` is specified,
		removes all registered listeners for `type`, otherwise removes all registered
		listeners.
	**/
	function removeAllListeners(?type:String):NodeEventTarget;
	/**
		Node.js-specific extension to the `EventTarget` class that removes the
		`listener` for the given `type`. The only difference between `removeListener()`
		and `removeEventListener()` is that `removeListener()` will return a reference
		to the `EventTarget`.
	**/
	function removeListener(type:String, listener:(arg:Dynamic) -> Void, ?options:js.html.EventListenerOptions):NodeEventTarget;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	function addEventListener(type:String, callback:Null<js.html.EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	function removeEventListener(type:String, callback:Null<js.html.EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
};