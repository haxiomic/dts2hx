package js.html;

/**
	The **`MediaSession`** interface of the Media Session API allows a web page to provide custom behaviors for standard media playback interactions, and to report metadata that can be sent by the user agent to the device or operating system for presentation in standardized user interface elements.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSession)
**/
@:native("MediaSession") extern class MediaSession {
	function new();
	/**
		The **`metadata`** property of the MediaSession interface contains a MediaMetadata object providing descriptive information about the currently playing media, or `null` if the metadata has not been set.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSession/metadata)
	**/
	var metadata : Null<MediaMetadata>;
	/**
		The **`playbackState`** property of the playing or paused.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSession/playbackState)
	**/
	var playbackState : MediaSessionPlaybackState;
	/**
		The **`setActionHandler()`** method of the MediaSession interface sets a handler for a media session action.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSession/setActionHandler)
	**/
	function setActionHandler(action:MediaSessionAction, handler:Null<MediaSessionActionHandler>):Void;
	/**
		The **`setCameraActive()`** method of the MediaSession interface is used to indicate to the user agent whether the user's camera is considered to be active.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSession/setCameraActive)
	**/
	function setCameraActive(active:Bool):js.lib.Promise<ts.Undefined>;
	/**
		The **`setMicrophoneActive()`** method of the MediaSession interface is used to indicate to the user agent whether the user's microphone is considered to be currently muted.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSession/setMicrophoneActive)
	**/
	function setMicrophoneActive(active:Bool):js.lib.Promise<ts.Undefined>;
	/**
		The **`setPositionState()`** method of the document's media playback position and speed for presentation by user's device in any kind of interface that provides details about ongoing media.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSession/setPositionState)
	**/
	function setPositionState(?state:MediaPositionState):Void;
	static var prototype : MediaSession;
}