package js.html;

/**
	The **`VideoColorSpace`** interface of the WebCodecs API represents the color space of a video.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
**/
typedef IVideoColorSpace = {
	/**
		The **`fullRange`** read-only property of the VideoColorSpace interface returns `true` if full-range color values are used.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/fullRange)
	**/
	final fullRange : Null<Bool>;
	/**
		The **`matrix`** read-only property of the VideoColorSpace interface returns the matrix coefficient of the video.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/matrix)
	**/
	final matrix : Null<VideoMatrixCoefficients>;
	/**
		The **`primaries`** read-only property of the VideoColorSpace interface returns the color gamut of the video.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/primaries)
	**/
	final primaries : Null<VideoColorPrimaries>;
	/**
		The **`transfer`** read-only property of the VideoColorSpace interface returns the opto-electronic transfer characteristics of the video.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/transfer)
	**/
	final transfer : Null<VideoTransferCharacteristics>;
	/**
		The **`toJSON()`** method of the VideoColorSpace interface is a _serializer_ that returns a JSON representation of the `VideoColorSpace` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/toJSON)
	**/
	function toJSON():VideoColorSpaceInit;
};