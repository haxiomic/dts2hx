package js.html;

/**
	The **`PictureInPictureWindow`** interface represents an object able to programmatically obtain the **`width`** and **`height`** and **`resize event`** of the floating video window.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow)
**/
@:native("PictureInPictureWindow") extern class PictureInPictureWindow {
	function new();
	/**
		The read-only **`height`** property of the PictureInPictureWindow interface returns the height of the floating video window in pixels.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow/height)
	**/
	final height : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow/resize_event)
	**/
	@:optional
	dynamic function onresize(ev:js.html.Event):Dynamic;
	/**
		The read-only **`width`** property of the PictureInPictureWindow interface returns the width of the floating video window in pixels.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow/width)
	**/
	final width : Float;
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
	static var prototype : PictureInPictureWindow;
}