package ts.html;
@:native("ImageBitmap") extern class ImageBitmap {
	function new();
	/**
		Returns the intrinsic height of the image, in CSS pixels.
	**/
	final height : Float;
	/**
		Returns the intrinsic width of the image, in CSS pixels.
	**/
	final width : Float;
	/**
		Releases imageBitmap's underlying bitmap data.
	**/
	function close():Void;
	static var prototype : ImageBitmap;
}