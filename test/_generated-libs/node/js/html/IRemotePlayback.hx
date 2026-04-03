package js.html;

/**
	The **`RemotePlayback`** interface of the Remote Playback API allows the page to detect availability of remote playback devices, then connect to and control playing on these devices.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback)
**/
typedef IRemotePlayback = {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback/connect_event)
	**/
	@:optional
	dynamic function onconnect(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback/connecting_event)
	**/
	@:optional
	dynamic function onconnecting(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback/disconnect_event)
	**/
	@:optional
	dynamic function ondisconnect(ev:js.html.Event):Dynamic;
	/**
		The **`state`** read-only property of the RemotePlayback interface returns the current state of the `RemotePlayback` connection.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback/state)
	**/
	final state : RemotePlaybackState;
	/**
		The **`cancelWatchAvailability()`** method of the RemotePlayback interface cancels the request to watch for one or all available devices.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback/cancelWatchAvailability)
	**/
	function cancelWatchAvailability(?id:Float):js.lib.Promise<ts.Undefined>;
	/**
		The **`prompt()`** method of the RemotePlayback interface prompts the user to select an available remote playback device and give permission for the current media to be played using that device.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback/prompt)
	**/
	function prompt():js.lib.Promise<ts.Undefined>;
	/**
		The **`watchAvailability()`** method of the RemotePlayback interface watches the list of available remote playback devices and returns a Promise that resolves with the `callbackId` of a remote playback device.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback/watchAvailability)
	**/
	function watchAvailability(callback:RemotePlaybackAvailabilityCallback):js.lib.Promise<Float>;
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