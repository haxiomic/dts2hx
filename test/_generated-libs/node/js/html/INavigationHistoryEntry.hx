package js.html;

/**
	The **`NavigationHistoryEntry`** interface of the Navigation API represents a single navigation history entry.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry)
**/
typedef INavigationHistoryEntry = {
	/**
		The **`id`** read-only property of the NavigationHistoryEntry interface returns the `id` of the history entry, or an empty string if current document is not fully active.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry/id)
	**/
	final id : String;
	/**
		The **`index`** read-only property of the NavigationHistoryEntry interface returns the index of the history entry in the history entries list (that is, the list returned by Navigation.entries()), or `-1` if the entry does not appear in the list or if current document is not fully active.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry/index)
	**/
	final index : Float;
	/**
		The **`key`** read-only property of the NavigationHistoryEntry interface returns the `key` of the history entry, or an empty string if current document is not fully active.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry/key)
	**/
	final key : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry/dispose_event)
	**/
	@:optional
	dynamic function ondispose(ev:js.html.Event):Dynamic;
	/**
		The **`sameDocument`** read-only property of the NavigationHistoryEntry interface returns `true` if this history entry is for the same `document` as the current Document value and current document is fully active, or `false` otherwise.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry/sameDocument)
	**/
	final sameDocument : Bool;
	/**
		The **`url`** read-only property of the NavigationHistoryEntry interface returns the absolute URL of this history entry.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry/url)
	**/
	final url : Null<String>;
	/**
		The **`getState()`** method of the NavigationHistoryEntry interface returns a clone of the developer-supplied state associated with this history entry.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry/getState)
	**/
	function getState():Dynamic;
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