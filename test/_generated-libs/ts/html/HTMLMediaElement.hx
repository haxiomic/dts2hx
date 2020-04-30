package ts.html;
/**
	Adds to HTMLElement the properties and methods needed to support basic media-related capabilities that are common to audio and video.
**/
@:native("HTMLMediaElement") extern class HTMLMediaElement {
	function new();
	/**
		Returns an AudioTrackList object with the audio tracks for a given video element.
	**/
	final audioTracks : ts.lib.IAudioTrackList;
	/**
		Gets or sets a value that indicates whether to start playing the media automatically.
	**/
	var autoplay : Bool;
	/**
		Gets a collection of buffered time ranges.
	**/
	final buffered : ITimeRanges;
	/**
		Gets or sets a flag that indicates whether the client provides a set of controls for the media (in case the developer does not include controls for the player).
	**/
	var controls : Bool;
	var crossOrigin : Null<String>;
	/**
		Gets the address or URL of the current media resource that is selected by IHTMLMediaElement.
	**/
	final currentSrc : String;
	/**
		Gets or sets the current playback position, in seconds.
	**/
	var currentTime : Float;
	var defaultMuted : Bool;
	/**
		Gets or sets the default playback rate when the user is not using fast forward or reverse for a video or audio resource.
	**/
	var defaultPlaybackRate : Float;
	/**
		Returns the duration in seconds of the current media resource. A NaN value is returned if duration is not available, or Infinity if the media resource is streaming.
	**/
	final duration : Float;
	/**
		Gets information about whether the playback has ended or not.
	**/
	final ended : Bool;
	/**
		Returns an object representing the current error state of the audio or video element.
	**/
	final error : Null<IMediaError>;
	/**
		Gets or sets a flag to specify whether playback should restart after it completes.
	**/
	var loop : Bool;
	final mediaKeys : Null<IMediaKeys>;
	/**
		Specifies the purpose of the audio or video media, such as background audio or alerts.
	**/
	var msAudioCategory : String;
	/**
		Specifies the output device id that the audio will be sent to.
	**/
	var msAudioDeviceType : String;
	final msGraphicsTrustStatus : IMSGraphicsTrust;
	final msKeys : IMSMediaKeys;
	/**
		Gets or sets whether the DLNA PlayTo device is available.
	**/
	var msPlayToDisabled : Bool;
	/**
		Gets or sets the path to the preferred media source. This enables the Play To target device to stream the media content, which can be DRM protected, from a different location, such as a cloud media server.
	**/
	var msPlayToPreferredSourceUri : String;
	/**
		Gets or sets the primary DLNA PlayTo device.
	**/
	var msPlayToPrimary : Bool;
	/**
		Gets the source associated with the media element for use by the PlayToManager.
	**/
	final msPlayToSource : Any;
	/**
		Specifies whether or not to enable low-latency playback on the media element.
	**/
	var msRealTime : Bool;
	/**
		Gets or sets a flag that indicates whether the audio (either audio or the audio track on video media) is muted.
	**/
	var muted : Bool;
	/**
		Gets the current network activity for the element.
	**/
	final networkState : Float;
	var onencrypted : Null<(ev:IMediaEncryptedEvent) -> Any>;
	var onmsneedkey : Null<(ev:IEvent) -> Any>;
	var onwaitingforkey : Null<(ev:IEvent) -> Any>;
	/**
		Gets a flag that specifies whether playback is paused.
	**/
	final paused : Bool;
	/**
		Gets or sets the current rate of speed for the media resource to play. This speed is expressed as a multiple of the normal speed of the media resource.
	**/
	var playbackRate : Float;
	/**
		Gets TimeRanges for the current media resource that has been played.
	**/
	final played : ITimeRanges;
	/**
		Gets or sets the current playback position, in seconds.
	**/
	var preload : String;
	final readyState : Float;
	/**
		Returns a TimeRanges object that represents the ranges of the current media resource that can be seeked.
	**/
	final seekable : ITimeRanges;
	/**
		Gets a flag that indicates whether the client is currently moving to a new playback position in the media resource.
	**/
	final seeking : Bool;
	/**
		The address or URL of the a media resource that is to be considered.
	**/
	var src : String;
	var srcObject : Null<haxe.extern.EitherType<IBlob, haxe.extern.EitherType<IMediaSource, IMediaStream>>>;
	final textTracks : ts.lib.ITextTrackList;
	final videoTracks : ts.lib.IVideoTrackList;
	/**
		Gets or sets the volume level for audio portions of the media element.
	**/
	var volume : Float;
	function addTextTrack(kind:String, ?label:String, ?language:String):ITextTrack;
	/**
		Returns a string that specifies whether the client can play a given media resource type.
	**/
	function canPlayType(type:String):String;
	/**
		Resets the audio or video object and loads a new media resource.
	**/
	function load():Void;
	/**
		Clears all effects from the media pipeline.
	**/
	function msClearEffects():Void;
	function msGetAsCastingSource():Any;
	/**
		Inserts the specified audio effect into media pipeline.
	**/
	function msInsertAudioEffect(activatableClassId:String, effectRequired:Bool, ?config:Any):Void;
	function msSetMediaKeys(mediaKeys:IMSMediaKeys):Void;
	/**
		Specifies the media protection manager for a given media pipeline.
	**/
	function msSetMediaProtectionManager(?mediaProtectionManager:Any):Void;
	/**
		Pauses the current playback and sets paused to TRUE. This can be used to test whether the media is playing or paused. You can also use the pause or play events to tell whether the media is playing or not.
	**/
	function pause():Void;
	/**
		Loads and starts playback of a media resource.
	**/
	function play():ts.lib.IPromise<Void>;
	function setMediaKeys(mediaKeys:Null<IMediaKeys>):ts.lib.IPromise<Void>;
	final HAVE_CURRENT_DATA : Float;
	final HAVE_ENOUGH_DATA : Float;
	final HAVE_FUTURE_DATA : Float;
	final HAVE_METADATA : Float;
	final HAVE_NOTHING : Float;
	final NETWORK_EMPTY : Float;
	final NETWORK_IDLE : Float;
	final NETWORK_LOADING : Float;
	final NETWORK_NO_SOURCE : Float;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<IEvent, haxe.extern.EitherType<IClipboardEvent, haxe.extern.EitherType<IUIEvent, haxe.extern.EitherType<IDragEvent, haxe.extern.EitherType<IMouseEvent, haxe.extern.EitherType<IErrorEvent, haxe.extern.EitherType<IFocusEvent, haxe.extern.EitherType<IKeyboardEvent, haxe.extern.EitherType<IMediaEncryptedEvent, haxe.extern.EitherType<IPointerEvent, haxe.extern.EitherType<IProgressEvent<IEventTarget>, haxe.extern.EitherType<ISecurityPolicyViolationEvent, haxe.extern.EitherType<ITouchEvent, haxe.extern.EitherType<ITransitionEvent, haxe.extern.EitherType<IWheelEvent, IAnimationEvent>>>>>>>>>>>>>>>) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<IEvent, haxe.extern.EitherType<IClipboardEvent, haxe.extern.EitherType<IUIEvent, haxe.extern.EitherType<IDragEvent, haxe.extern.EitherType<IMouseEvent, haxe.extern.EitherType<IErrorEvent, haxe.extern.EitherType<IFocusEvent, haxe.extern.EitherType<IKeyboardEvent, haxe.extern.EitherType<IMediaEncryptedEvent, haxe.extern.EitherType<IPointerEvent, haxe.extern.EitherType<IProgressEvent<IEventTarget>, haxe.extern.EitherType<ISecurityPolicyViolationEvent, haxe.extern.EitherType<ITouchEvent, haxe.extern.EitherType<ITransitionEvent, haxe.extern.EitherType<IWheelEvent, IAnimationEvent>>>>>>>>>>>>>>>) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	static var prototype : IHTMLMediaElement;
	@:native("HAVE_CURRENT_DATA")
	static final HAVE_CURRENT_DATA_ : Float;
	@:native("HAVE_ENOUGH_DATA")
	static final HAVE_ENOUGH_DATA_ : Float;
	@:native("HAVE_FUTURE_DATA")
	static final HAVE_FUTURE_DATA_ : Float;
	@:native("HAVE_METADATA")
	static final HAVE_METADATA_ : Float;
	@:native("HAVE_NOTHING")
	static final HAVE_NOTHING_ : Float;
	@:native("NETWORK_EMPTY")
	static final NETWORK_EMPTY_ : Float;
	@:native("NETWORK_IDLE")
	static final NETWORK_IDLE_ : Float;
	@:native("NETWORK_LOADING")
	static final NETWORK_LOADING_ : Float;
	@:native("NETWORK_NO_SOURCE")
	static final NETWORK_NO_SOURCE_ : Float;
}