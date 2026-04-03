package js.html;

/**
	The **`CookieStore`** interface of the Cookie Store API provides methods for getting and setting cookies asynchronously from either a page or a service worker.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStore)
**/
typedef ICookieStore = {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStore/change_event)
	**/
	@:optional
	dynamic function onchange(ev:CookieChangeEvent):Dynamic;
	/**
		The **`delete()`** method of the CookieStore interface deletes a cookie that matches the given `name` or `options` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStore/delete)
	**/
	@:overload(function(options:CookieStoreDeleteOptions):js.lib.Promise<ts.Undefined> { })
	function delete(name:String):js.lib.Promise<ts.Undefined>;
	/**
		The **`get()`** method of the CookieStore interface returns a Promise that resolves to a single cookie matching the given `name` or `options` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStore/get)
	**/
	@:overload(function(?options:CookieStoreGetOptions):js.lib.Promise<Null<CookieListItem>> { })
	function get(name:String):js.lib.Promise<Null<CookieListItem>>;
	/**
		The **`getAll()`** method of the CookieStore interface returns a Promise that resolves as an array of cookies that match the `name` or `options` passed to it.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStore/getAll)
	**/
	@:overload(function(?options:CookieStoreGetOptions):js.lib.Promise<CookieList> { })
	function getAll(name:String):js.lib.Promise<CookieList>;
	/**
		The **`set()`** method of the CookieStore interface sets a cookie with the given `name` and `value` or `options` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStore/set)
	**/
	@:overload(function(options:CookieInit):js.lib.Promise<ts.Undefined> { })
	function set(name:String, value:String):js.lib.Promise<ts.Undefined>;
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