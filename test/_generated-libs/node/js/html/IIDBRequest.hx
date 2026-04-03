package js.html;

/**
	The **`IDBRequest`** interface of the IndexedDB API provides access to results of asynchronous requests to databases and database objects using event handler attributes.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest)
**/
typedef IIDBRequest<T> = {
	/**
		The **`error`** read-only property of the request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest/error)
	**/
	final error : Null<js.html.DOMException>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest/error_event)
	**/
	@:optional
	dynamic function onerror(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest/success_event)
	**/
	@:optional
	dynamic function onsuccess(ev:js.html.Event):Dynamic;
	/**
		The **`readyState`** read-only property of the Every request starts in the `pending` state.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest/readyState)
	**/
	final readyState : IDBRequestReadyState;
	/**
		The **`result`** read-only property of the any - `InvalidStateError` DOMException - : Thrown when attempting to access the property if the request is not completed, and therefore the result is not available.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest/result)
	**/
	final result : T;
	/**
		The **`source`** read-only property of the Index or an object store.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest/source)
	**/
	final source : ts.AnyOf3<js.html.idb.Cursor, js.html.idb.ObjectStore, js.html.idb.Index>;
	/**
		The **`transaction`** read-only property of the IDBRequest interface returns the transaction for the request, that is, the transaction the request is being made inside.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest/transaction)
	**/
	final transaction : Null<js.html.idb.Transaction>;
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