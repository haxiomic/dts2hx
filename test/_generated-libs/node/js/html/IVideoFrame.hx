package js.html;

/**
	The **`VideoFrame`** interface of the Web Codecs API represents a frame of a video.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame)
**/
typedef IVideoFrame = {
	/**
		The **`codedHeight`** property of the VideoFrame interface returns the height of the VideoFrame in pixels, potentially including non-visible padding, and prior to considering potential ratio adjustments.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedHeight)
	**/
	final codedHeight : Float;
	/**
		The **`codedRect`** property of the VideoFrame interface returns a DOMRectReadOnly with the width and height matching VideoFrame.codedWidth and VideoFrame.codedHeight.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedRect)
	**/
	final codedRect : Null<js.html.DOMRectReadOnly>;
	/**
		The **`codedWidth`** property of the VideoFrame interface returns the width of the `VideoFrame` in pixels, potentially including non-visible padding, and prior to considering potential ratio adjustments.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedWidth)
	**/
	final codedWidth : Float;
	/**
		The **`colorSpace`** property of the VideoFrame interface returns a VideoColorSpace object representing the color space of the video.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/colorSpace)
	**/
	final colorSpace : VideoColorSpace;
	/**
		The **`displayHeight`** property of the VideoFrame interface returns the height of the `VideoFrame` after applying aspect ratio adjustments.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/displayHeight)
	**/
	final displayHeight : Float;
	/**
		The **`displayWidth`** property of the VideoFrame interface returns the width of the `VideoFrame` after applying aspect ratio adjustments.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/displayWidth)
	**/
	final displayWidth : Float;
	/**
		The **`duration`** property of the VideoFrame interface returns an integer indicating the duration of the video in microseconds.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/duration)
	**/
	final duration : Null<Float>;
	/**
		The **`format`** property of the VideoFrame interface returns the pixel format of the `VideoFrame`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/format)
	**/
	final format : Null<VideoPixelFormat>;
	/**
		The **`timestamp`** property of the VideoFrame interface returns an integer indicating the timestamp of the video in microseconds.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/timestamp)
	**/
	final timestamp : Float;
	/**
		The **`visibleRect`** property of the VideoFrame interface returns a DOMRectReadOnly describing the visible rectangle of pixels for this `VideoFrame`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/visibleRect)
	**/
	final visibleRect : Null<js.html.DOMRectReadOnly>;
	/**
		The **`allocationSize()`** method of the VideoFrame interface returns the number of bytes required to hold the video as filtered by options passed into the method.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/allocationSize)
	**/
	function allocationSize(?options:VideoFrameCopyToOptions):Float;
	/**
		The **`clone()`** method of the VideoFrame interface creates a new `VideoFrame` object referencing the same media resource as the original.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/clone)
	**/
	function clone():VideoFrame;
	/**
		The **`close()`** method of the VideoFrame interface clears all states and releases the reference to the media resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/close)
	**/
	function close():Void;
	/**
		The **`copyTo()`** method of the VideoFrame interface copies the contents of the `VideoFrame` to an `ArrayBuffer`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
	**/
	function copyTo(destination:AllowSharedBufferSource, ?options:VideoFrameCopyToOptions):js.lib.Promise<Array<PlaneLayout>>;
};