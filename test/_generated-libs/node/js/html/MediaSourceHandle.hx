package js.html;

/**
	The **`MediaSourceHandle`** interface of the Media Source Extensions API is a proxy for a MediaSource that can be transferred from a dedicated worker back to the main thread and attached to a media element via its HTMLMediaElement.srcObject property.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSourceHandle)
**/
@:native("MediaSourceHandle") extern class MediaSourceHandle {
	function new();
	static var prototype : MediaSourceHandle;
}