package js.html;

/**
	The **`EncodedVideoChunk`** interface of the WebCodecs API represents a chunk of encoded video data.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk)
**/
typedef IEncodedVideoChunk = {
	/**
		The **`byteLength`** read-only property of the EncodedVideoChunk interface returns the length in bytes of the encoded video data.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/byteLength)
	**/
	final byteLength : Float;
	/**
		The **`duration`** read-only property of the EncodedVideoChunk interface returns an integer indicating the duration of the video in microseconds.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/duration)
	**/
	final duration : Null<Float>;
	/**
		The **`timestamp`** read-only property of the EncodedVideoChunk interface returns an integer indicating the timestamp of the video in microseconds.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/timestamp)
	**/
	final timestamp : Float;
	/**
		The **`type`** read-only property of the EncodedVideoChunk interface returns a value indicating whether the video chunk is a key chunk, which does not rely on other frames for decoding.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/type)
	**/
	final type : EncodedVideoChunkType;
	/**
		The **`copyTo()`** method of the EncodedVideoChunk interface copies the encoded chunk of video data.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/copyTo)
	**/
	function copyTo(destination:AllowSharedBufferSource):Void;
};