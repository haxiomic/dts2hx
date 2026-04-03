package js.html;

/**
	The **`EncodedAudioChunk`** interface of the WebCodecs API represents a chunk of encoded audio data.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk)
**/
typedef IEncodedAudioChunk = {
	/**
		The **`byteLength`** read-only property of the EncodedAudioChunk interface returns the length in bytes of the encoded audio data.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/byteLength)
	**/
	final byteLength : Float;
	/**
		The **`duration`** read-only property of the EncodedAudioChunk interface returns an integer indicating the duration of the audio in microseconds.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/duration)
	**/
	final duration : Null<Float>;
	/**
		The **`timestamp`** read-only property of the EncodedAudioChunk interface returns an integer indicating the timestamp of the audio in microseconds.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/timestamp)
	**/
	final timestamp : Float;
	/**
		The **`type`** read-only property of the EncodedAudioChunk interface returns a value indicating whether the audio chunk is a key chunk, which does not relying on other frames for decoding.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/type)
	**/
	final type : EncodedAudioChunkType;
	/**
		The **`copyTo()`** method of the EncodedAudioChunk interface copies the encoded chunk of audio data.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/copyTo)
	**/
	function copyTo(destination:AllowSharedBufferSource):Void;
};