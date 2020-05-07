package ts.html;
typedef IImageBitmapRenderingContext = {
	/**
		Returns the canvas element that the context is bound to.
	**/
	final canvas : ts.AnyOf2<HTMLCanvasElement, OffscreenCanvas>;
	/**
		Transfers the underlying bitmap data from imageBitmap to context, and the bitmap becomes the contents of the canvas element to which context is bound.
	**/
	function transferFromImageBitmap(bitmap:Null<ImageBitmap>):Void;
};