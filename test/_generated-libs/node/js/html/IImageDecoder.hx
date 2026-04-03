package js.html;

/**
	The **`ImageDecoder`** interface of the WebCodecs API provides a way to unpack and decode encoded image data.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder)
**/
typedef IImageDecoder = {
	/**
		The **`complete`** read-only property of the ImageDecoder interface returns true if encoded data has completed buffering.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder/complete)
	**/
	final complete : Bool;
	/**
		The **`completed`** read-only property of the ImageDecoder interface returns a promise that resolves once encoded data has finished buffering.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder/completed)
	**/
	final completed : js.lib.Promise<ts.Undefined>;
	/**
		The **`tracks`** read-only property of the ImageDecoder interface returns a list of the tracks in the encoded image data.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder/tracks)
	**/
	final tracks : ImageTrackList;
	/**
		The **`type`** read-only property of the ImageDecoder interface reflects the MIME type configured during construction.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder/type)
	**/
	final type : String;
	/**
		The **`close()`** method of the ImageDecoder interface ends all pending work and releases system resources.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder/close)
	**/
	function close():Void;
	/**
		The **`decode()`** method of the ImageDecoder interface enqueues a control message to decode the frame of an image.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder/decode)
	**/
	function decode(?options:ImageDecodeOptions):js.lib.Promise<ImageDecodeResult>;
	/**
		The **`reset()`** method of the ImageDecoder interface aborts all pending `decode()` operations; rejecting all pending promises.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder/reset)
	**/
	function reset():Void;
};