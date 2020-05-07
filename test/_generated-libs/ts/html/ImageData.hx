package ts.html;
/**
	The underlying pixel data of an area of a <canvas> element. It is created using the ImageData() constructor or creator methods on the CanvasRenderingContext2D object associated with a canvas: createImageData() and getImageData(). It can also be used to set a part of the canvas by using putImageData().
**/
@:native("ImageData") extern class ImageData {
	@:overload(function(array:ts.lib.Uint8ClampedArray, width:Float, ?height:Float):ImageData { })
	function new(width:Float, height:Float);
	/**
		Returns the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255.
	**/
	final data : ts.lib.Uint8ClampedArray;
	/**
		Returns the actual dimensions of the data in the ImageData object, in pixels.
	**/
	final height : Float;
	/**
		Returns the actual dimensions of the data in the ImageData object, in pixels.
	**/
	final width : Float;
	static var prototype : ImageData;
}