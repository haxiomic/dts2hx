package ts.html;
@:native("OffscreenCanvas") extern class OffscreenCanvas {
	function new(width:Float, height:Float);
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
	@:overload(function(contextId:String, ?options:Any):Null<haxe.extern.EitherType<IImageBitmapRenderingContext, haxe.extern.EitherType<IOffscreenCanvasRenderingContext2D, haxe.extern.EitherType<IWebGL2RenderingContext, IWebGLRenderingContext>>>> { })
	function getContext(contextId:String, ?options:CanvasRenderingContext2DSettings):Null<IOffscreenCanvasRenderingContext2D>;
	/**
		Returns a newly created ImageBitmap object with the image in the OffscreenCanvas object. The image in the OffscreenCanvas object is replaced with a new blank image.
	**/
	function transferToImageBitmap():IImageBitmap;
	static var prototype : IOffscreenCanvas;
}