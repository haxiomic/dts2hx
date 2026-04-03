package js.html;

/**
	The **`MediaMetadata`** interface of the Media Session API allows a web page to provide rich media metadata for display in a platform UI.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaMetadata)
**/
@:native("MediaMetadata") extern class MediaMetadata {
	function new(?init:MediaMetadataInit);
	/**
		The **`album`** property of the collection containing the media to be played.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaMetadata/album)
	**/
	var album : String;
	/**
		The **`artist`** property of the creator, etc., of the media to be played.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaMetadata/artist)
	**/
	var artist : String;
	/**
		The **`artwork`** property of the objects representing images associated with playing media.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaMetadata/artwork)
	**/
	var artwork : haxe.ds.ReadOnlyArray<MediaImage>;
	/**
		The **`title`** property of the played.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaMetadata/title)
	**/
	var title : String;
	static var prototype : MediaMetadata;
}