package js.html;

/**
	When using the canvas element or the Canvas API, rendering, animation, and user interaction usually happen on the main execution thread of a web application.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas)
**/
typedef IOffscreenCanvas = {
	/**
		The **`height`** property returns and sets the height of an OffscreenCanvas object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/height)
	**/
	var height : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/contextlost_event)
	**/
	@:optional
	dynamic function oncontextlost(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/contextrestored_event)
	**/
	@:optional
	dynamic function oncontextrestored(ev:js.html.Event):Dynamic;
	/**
		The **`width`** property returns and sets the width of an OffscreenCanvas object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/width)
	**/
	var width : Float;
	/**
		The **`OffscreenCanvas.convertToBlob()`** method creates a Blob object representing the image contained in the canvas.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/convertToBlob)
	**/
	function convertToBlob(?options:ImageEncodeOptions):js.lib.Promise<js.html.Blob>;
	/**
		The **`OffscreenCanvas.getContext()`** method returns a drawing context for an offscreen canvas, or `null` if the context identifier is not supported, or the offscreen canvas has already been set to a different context mode.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/getContext)
	**/
	@:overload(function(contextId:String, ?options:Dynamic):Null<js.html.ImageBitmapRenderingContext> { })
	@:overload(function(contextId:String, ?options:Dynamic):Null<js.html.webgl.RenderingContext> { })
	@:overload(function(contextId:String, ?options:Dynamic):Null<js.html.webgl.WebGL2RenderingContext> { })
	@:overload(function(contextId:OffscreenRenderingContextId, ?options:Dynamic):Null<OffscreenRenderingContext> { })
	function getContext(contextId:String, ?options:Dynamic):Null<OffscreenCanvasRenderingContext2D>;
	/**
		The **`OffscreenCanvas.transferToImageBitmap()`** method creates an ImageBitmap object from the most recently rendered image of the `OffscreenCanvas`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/transferToImageBitmap)
	**/
	function transferToImageBitmap():js.html.ImageBitmap;
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