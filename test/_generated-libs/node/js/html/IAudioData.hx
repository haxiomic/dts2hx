package js.html;

/**
	The **`AudioData`** interface of the WebCodecs API represents an audio sample.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData)
**/
typedef IAudioData = {
	/**
		The **`duration`** read-only property of the AudioData interface returns the duration in microseconds of this `AudioData` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/duration)
	**/
	final duration : Float;
	/**
		The **`format`** read-only property of the AudioData interface returns the sample format of the `AudioData` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/format)
	**/
	final format : Null<AudioSampleFormat>;
	/**
		The **`numberOfChannels`** read-only property of the AudioData interface returns the number of channels in the `AudioData` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/numberOfChannels)
	**/
	final numberOfChannels : Float;
	/**
		The **`numberOfFrames`** read-only property of the AudioData interface returns the number of frames in the `AudioData` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/numberOfFrames)
	**/
	final numberOfFrames : Float;
	/**
		The **`sampleRate`** read-only property of the AudioData interface returns the sample rate in Hz.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/sampleRate)
	**/
	final sampleRate : Float;
	/**
		The **`timestamp`** read-only property of the AudioData interface returns the timestamp of this `AudioData` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/timestamp)
	**/
	final timestamp : Float;
	/**
		The **`allocationSize()`** method of the AudioData interface returns the size in bytes required to hold the current sample as filtered by options passed into the method.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/allocationSize)
	**/
	function allocationSize(options:AudioDataCopyToOptions):Float;
	/**
		The **`clone()`** method of the AudioData interface creates a new `AudioData` object with reference to the same media resource as the original.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/clone)
	**/
	function clone():AudioData;
	/**
		The **`close()`** method of the AudioData interface clears all states and releases the reference to the media resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/close)
	**/
	function close():Void;
	/**
		The **`copyTo()`** method of the AudioData interface copies a plane of an `AudioData` object to a destination buffer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData/copyTo)
	**/
	function copyTo(destination:AllowSharedBufferSource, options:AudioDataCopyToOptions):Void;
};