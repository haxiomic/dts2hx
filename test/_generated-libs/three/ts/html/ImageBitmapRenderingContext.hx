package ts.html;
@:native("ImageBitmapRenderingContext") extern class ImageBitmapRenderingContext {
	function new();
	/**
		Returns the canvas element that the context is bound to.
	**/
	final canvas : haxe.extern.EitherType<IHTMLCanvasElement, IOffscreenCanvas>;
	/**
		Transfers the underlying bitmap data from imageBitmap to context, and the bitmap becomes the contents of the canvas element to which context is bound.
	**/
	function transferFromImageBitmap(bitmap:Null<IImageBitmap>):Void;
	static var prototype : IImageBitmapRenderingContext;
}