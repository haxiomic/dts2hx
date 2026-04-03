package js.html;

/**
	The **`ImageTrackList`** interface of the WebCodecs API represents a list of image tracks.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrackList)
**/
typedef IImageTrackList = {
	/**
		The **`length`** property of the ImageTrackList interface returns the length of the `ImageTrackList`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrackList/length)
	**/
	final length : Float;
	/**
		The **`ready`** property of the ImageTrackList interface returns a Promise that resolves when the `ImageTrackList` is populated with ImageTrack.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrackList/ready)
	**/
	final ready : js.lib.Promise<ts.Undefined>;
	/**
		The **`selectedIndex`** property of the ImageTrackList interface returns the `index` of the selected track.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrackList/selectedIndex)
	**/
	final selectedIndex : Float;
	/**
		The **`selectedTrack`** property of the ImageTrackList interface returns an ImageTrack object representing the currently selected track.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrackList/selectedTrack)
	**/
	final selectedTrack : Null<ImageTrack>;
};