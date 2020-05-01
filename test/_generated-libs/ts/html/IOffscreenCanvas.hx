package ts.html;
typedef IOffscreenCanvas = {
	/**
		These attributes return the dimensions of the OffscreenCanvas object's bitmap.
		
		They can be set, to replace the bitmap with a new, transparent black bitmap of the specified dimensions (effectively resizing it).
	**/
	var height : Float;
	/**
		These attributes return the dimensions of the OffscreenCanvas object's bitmap.
		
		They can be set, to replace the bitmap with a new, transparent black bitmap of the specified dimensions (effectively resizing it).
	**/
	var width : Float;
	/**
		Returns a promise that will fulfill with a new Blob object representing a file containing the image in the OffscreenCanvas object.
		
		The argument, if provided, is a dictionary that controls the encoding options of the image file to be created. The type field specifies the file format and has a default value of "image/png"; that type is also used if the requested type isn't supported. If the image format supports variable quality (such as "image/jpeg"), then the quality field is a number in the range 0.0 to 1.0 inclusive indicating the desired quality level for the resulting image.
	**/
	function convertToBlob(?options:ImageEncodeOptions):ts.lib.IPromise<IBlob>;
	/**
		Returns an object that exposes an API for drawing on the OffscreenCanvas object. contextId specifies the desired API: "2d", "bitmaprenderer", "webgl", or "webgl2". options is handled by that API.
		
		This specification defines the "2d" context below, which is similar but distinct from the "2d" context that is created from a canvas element. The WebGL specifications define the "webgl" and "webgl2" contexts. [WEBGL]
		
		Returns null if the canvas has already been initialized with another context type (e.g., trying to get a "2d" context after getting a "webgl" context).
	**/
	@:overload(function(contextId:String, ?options:ImageBitmapRenderingContextSettings):Null<IImageBitmapRenderingContext> { })
	@:overload(function(contextId:String, ?options:WebGLContextAttributes):Null<IWebGLRenderingContext> { })
	@:overload(function(contextId:String, ?options:WebGLContextAttributes):Null<IWebGL2RenderingContext> { })
	@:overload(function(contextId:String, ?options:Dynamic):Null<ts.AnyOf4<IImageBitmapRenderingContext, IOffscreenCanvasRenderingContext2D, IWebGL2RenderingContext, IWebGLRenderingContext>> { })
	function getContext(contextId:String, ?options:CanvasRenderingContext2DSettings):Null<IOffscreenCanvasRenderingContext2D>;
	/**
		Returns a newly created ImageBitmap object with the image in the OffscreenCanvas object. The image in the OffscreenCanvas object is replaced with a new blank image.
	**/
	function transferToImageBitmap():IImageBitmap;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	function addEventListener(type:String, listener:Null<ts.AnyOf2<EventListener, EventListenerObject>>, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<ts.AnyOf2<EventListener, EventListenerObject>>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
};