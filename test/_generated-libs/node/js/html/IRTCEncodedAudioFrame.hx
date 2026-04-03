package js.html;

/**
	The **`RTCEncodedAudioFrame`** of the WebRTC API represents an encoded audio frame in the WebRTC receiver or sender pipeline, which may be modified using a WebRTC Encoded Transform.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCEncodedAudioFrame)
**/
typedef IRTCEncodedAudioFrame = {
	/**
		The **`data`** property of the RTCEncodedAudioFrame interface returns a buffer containing the data for an encoded frame.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCEncodedAudioFrame/data)
	**/
	var data : js.lib.ArrayBuffer;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCEncodedAudioFrame/timestamp)
	**/
	final timestamp : Float;
	/**
		The **`getMetadata()`** method of the RTCEncodedAudioFrame interface returns an object containing the metadata associated with the frame.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCEncodedAudioFrame/getMetadata)
	**/
	function getMetadata():RTCEncodedAudioFrameMetadata;
};