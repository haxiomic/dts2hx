package js.html;

/**
	The **`ImageTrack`** interface of the WebCodecs API represents an individual image track.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrack)
**/
typedef IImageTrack = {
	/**
		The **`animated`** property of the ImageTrack interface returns `true` if the track is animated and therefore has multiple frames.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrack/animated)
	**/
	final animated : Bool;
	/**
		The **`frameCount`** property of the ImageTrack interface returns the number of frames in the track.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrack/frameCount)
	**/
	final frameCount : Float;
	/**
		The **`repetitionCount`** property of the ImageTrack interface returns the number of repetitions of this track.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrack/repetitionCount)
	**/
	final repetitionCount : Float;
	/**
		The **`selected`** property of the ImageTrack interface returns `true` if the track is selected for decoding.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrack/selected)
	**/
	var selected : Bool;
};