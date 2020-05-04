package ts.html;
/**
	A window containing a DOM document; the document property points to the DOM document loaded in that window.
**/
@:native("Window") extern class Window {
	function new();
	final applicationCache : IApplicationCache;
	final caches : ICacheStorage;
	final clientInformation : ts.lib.INavigator;
	final closed : Bool;
	final crypto : ICrypto;
	var customElements : ICustomElementRegistry;
	var defaultStatus : String;
	final devicePixelRatio : Float;
	final doNotTrack : String;
	final document : IDocument;
	final event : Null<IEvent>;
	final external : IExternal;
	final frameElement : IElement;
	final frames : IWindow;
	final history : IHistory;
	final innerHeight : Float;
	final innerWidth : Float;
	final isSecureContext : Bool;
	final length : Float;
	var location : ILocation;
	final locationbar : IBarProp;
	final menubar : IBarProp;
	final msContentScript : IExtensionScriptApis;
	var name : String;
	final navigator : ts.lib.INavigator;
	var offscreenBuffering : ts.AnyOf2<String, Bool>;
	var oncompassneedscalibration : Null<(ev:IEvent) -> Dynamic>;
	var ondevicelight : Null<(ev:IDeviceLightEvent) -> Dynamic>;
	var ondevicemotion : Null<(ev:IDeviceMotionEvent) -> Dynamic>;
	var ondeviceorientation : Null<(ev:IDeviceOrientationEvent) -> Dynamic>;
	var ondeviceorientationabsolute : Null<(ev:IDeviceOrientationEvent) -> Dynamic>;
	var onmousewheel : Null<(ev:IEvent) -> Dynamic>;
	var onmsgesturechange : Null<(ev:IEvent) -> Dynamic>;
	var onmsgesturedoubletap : Null<(ev:IEvent) -> Dynamic>;
	var onmsgestureend : Null<(ev:IEvent) -> Dynamic>;
	var onmsgesturehold : Null<(ev:IEvent) -> Dynamic>;
	var onmsgesturestart : Null<(ev:IEvent) -> Dynamic>;
	var onmsgesturetap : Null<(ev:IEvent) -> Dynamic>;
	var onmsinertiastart : Null<(ev:IEvent) -> Dynamic>;
	var onmspointercancel : Null<(ev:IEvent) -> Dynamic>;
	var onmspointerdown : Null<(ev:IEvent) -> Dynamic>;
	var onmspointerenter : Null<(ev:IEvent) -> Dynamic>;
	var onmspointerleave : Null<(ev:IEvent) -> Dynamic>;
	var onmspointermove : Null<(ev:IEvent) -> Dynamic>;
	var onmspointerout : Null<(ev:IEvent) -> Dynamic>;
	var onmspointerover : Null<(ev:IEvent) -> Dynamic>;
	var onmspointerup : Null<(ev:IEvent) -> Dynamic>;
	var onorientationchange : Null<(ev:IEvent) -> Dynamic>;
	var onreadystatechange : Null<(ev:IProgressEvent<IWindow>) -> Dynamic>;
	var onvrdisplayactivate : Null<(ev:IEvent) -> Dynamic>;
	var onvrdisplayblur : Null<(ev:IEvent) -> Dynamic>;
	var onvrdisplayconnect : Null<(ev:IEvent) -> Dynamic>;
	var onvrdisplaydeactivate : Null<(ev:IEvent) -> Dynamic>;
	var onvrdisplaydisconnect : Null<(ev:IEvent) -> Dynamic>;
	var onvrdisplayfocus : Null<(ev:IEvent) -> Dynamic>;
	var onvrdisplaypointerrestricted : Null<(ev:IEvent) -> Dynamic>;
	var onvrdisplaypointerunrestricted : Null<(ev:IEvent) -> Dynamic>;
	var onvrdisplaypresentchange : Null<(ev:IEvent) -> Dynamic>;
	var opener : Dynamic;
	final orientation : ts.AnyOf2<String, Float>;
	final outerHeight : Float;
	final outerWidth : Float;
	final pageXOffset : Float;
	final pageYOffset : Float;
	final parent : IWindow;
	final performance : IPerformance;
	final personalbar : IBarProp;
	final screen : IScreen;
	final screenLeft : Float;
	final screenTop : Float;
	final screenX : Float;
	final screenY : Float;
	final scrollX : Float;
	final scrollY : Float;
	final scrollbars : IBarProp;
	final self : Dynamic;
	final speechSynthesis : ISpeechSynthesis;
	var status : String;
	final statusbar : IBarProp;
	final styleMedia : IStyleMedia;
	final toolbar : IBarProp;
	final top : IWindow;
	final window : Dynamic;
	function alert(?message:Dynamic):Void;
	function blur():Void;
	function captureEvents():Void;
	function close():Void;
	function confirm(?message:String):Bool;
	function departFocus(navigationReason:NavigationReason, origin:FocusNavigationOrigin):Void;
	function focus():Void;
	function getComputedStyle(elt:IElement, ?pseudoElt:String):ts.lib.ICSSStyleDeclaration;
	function getMatchedCSSRules(elt:IElement, ?pseudoElt:String):ts.lib.ICSSRuleList;
	function getSelection():Null<ISelection>;
	function matchMedia(query:String):IMediaQueryList;
	function moveBy(x:Float, y:Float):Void;
	function moveTo(x:Float, y:Float):Void;
	function msWriteProfilerMark(profilerMarkName:String):Void;
	function open(?url:String, ?target:String, ?features:String, ?replace:Bool):Null<IWindow>;
	function postMessage(message:Dynamic, targetOrigin:String, ?transfer:Array<Transferable>):Void;
	function print():Void;
	function prompt(?message:String, ?_default:String):Null<String>;
	function releaseEvents():Void;
	function resizeBy(x:Float, y:Float):Void;
	function resizeTo(x:Float, y:Float):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scroll(?options:ScrollToOptions):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scrollBy(?options:ScrollToOptions):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scrollTo(?options:ScrollToOptions):Void;
	function stop():Void;
	function webkitCancelAnimationFrame(handle:Float):Void;
	function webkitConvertPointFromNodeToPage(node:INode, pt:IWebKitPoint):IWebKitPoint;
	function webkitConvertPointFromPageToNode(node:INode, pt:IWebKitPoint):IWebKitPoint;
	function webkitRequestAnimationFrame(callback:FrameRequestCallback):Float;
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
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	function cancelAnimationFrame(handle:Float):Void;
	function requestAnimationFrame(callback:FrameRequestCallback):Float;
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:IUIEvent) -> Dynamic>;
	var onanimationcancel : Null<(ev:IAnimationEvent) -> Dynamic>;
	var onanimationend : Null<(ev:IAnimationEvent) -> Dynamic>;
	var onanimationiteration : Null<(ev:IAnimationEvent) -> Dynamic>;
	var onanimationstart : Null<(ev:IAnimationEvent) -> Dynamic>;
	var onauxclick : Null<(ev:IMouseEvent) -> Dynamic>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:IFocusEvent) -> Dynamic>;
	var oncancel : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:IEvent) -> Dynamic>;
	var oncanplaythrough : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:IMouseEvent) -> Dynamic>;
	var onclose : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:IMouseEvent) -> Dynamic>;
	var oncuechange : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:IMouseEvent) -> Dynamic>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:IDragEvent) -> Dynamic>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:IDragEvent) -> Dynamic>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:IDragEvent) -> Dynamic>;
	var ondragexit : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:IDragEvent) -> Dynamic>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:IDragEvent) -> Dynamic>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:IDragEvent) -> Dynamic>;
	var ondrop : Null<(ev:IDragEvent) -> Dynamic>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : OnErrorEventHandler;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:IFocusEvent) -> Dynamic>;
	var ongotpointercapture : Null<(ev:IPointerEvent) -> Dynamic>;
	var oninput : Null<(ev:IEvent) -> Dynamic>;
	var oninvalid : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:IKeyboardEvent) -> Dynamic>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:IKeyboardEvent) -> Dynamic>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:IKeyboardEvent) -> Dynamic>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:IEvent) -> Dynamic>;
	var onloadend : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:IEvent) -> Dynamic>;
	var onlostpointercapture : Null<(ev:IPointerEvent) -> Dynamic>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:IMouseEvent) -> Dynamic>;
	var onmouseenter : Null<(ev:IMouseEvent) -> Dynamic>;
	var onmouseleave : Null<(ev:IMouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:IMouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:IMouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:IMouseEvent) -> Dynamic>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:IMouseEvent) -> Dynamic>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:IEvent) -> Dynamic>;
	var onpointercancel : Null<(ev:IPointerEvent) -> Dynamic>;
	var onpointerdown : Null<(ev:IPointerEvent) -> Dynamic>;
	var onpointerenter : Null<(ev:IPointerEvent) -> Dynamic>;
	var onpointerleave : Null<(ev:IPointerEvent) -> Dynamic>;
	var onpointermove : Null<(ev:IPointerEvent) -> Dynamic>;
	var onpointerout : Null<(ev:IPointerEvent) -> Dynamic>;
	var onpointerover : Null<(ev:IPointerEvent) -> Dynamic>;
	var onpointerup : Null<(ev:IPointerEvent) -> Dynamic>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:IEvent) -> Dynamic>;
	var onresize : Null<(ev:IUIEvent) -> Dynamic>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:IEvent) -> Dynamic>;
	var onsecuritypolicyviolation : Null<(ev:ISecurityPolicyViolationEvent) -> Dynamic>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:IEvent) -> Dynamic>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:IEvent) -> Dynamic>;
	var onselectionchange : Null<(ev:IEvent) -> Dynamic>;
	var onselectstart : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:IEvent) -> Dynamic>;
	var onsubmit : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:IEvent) -> Dynamic>;
	var ontoggle : Null<(ev:IEvent) -> Dynamic>;
	var ontouchcancel : Null<(ev:ITouchEvent) -> Dynamic>;
	var ontouchend : Null<(ev:ITouchEvent) -> Dynamic>;
	var ontouchmove : Null<(ev:ITouchEvent) -> Dynamic>;
	var ontouchstart : Null<(ev:ITouchEvent) -> Dynamic>;
	var ontransitioncancel : Null<(ev:ITransitionEvent) -> Dynamic>;
	var ontransitionend : Null<(ev:ITransitionEvent) -> Dynamic>;
	var ontransitionrun : Null<(ev:ITransitionEvent) -> Dynamic>;
	var ontransitionstart : Null<(ev:ITransitionEvent) -> Dynamic>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:IEvent) -> Dynamic>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:IEvent) -> Dynamic>;
	var onwheel : Null<(ev:IWheelEvent) -> Dynamic>;
	final indexedDB : IIDBFactory;
	function atob(encodedString:String):String;
	function btoa(rawString:String):String;
	final console : IConsole;
	var onafterprint : Null<(ev:IEvent) -> Dynamic>;
	var onbeforeprint : Null<(ev:IEvent) -> Dynamic>;
	var onbeforeunload : Null<(ev:IBeforeUnloadEvent) -> Dynamic>;
	var onhashchange : Null<(ev:IHashChangeEvent) -> Dynamic>;
	var onlanguagechange : Null<(ev:IEvent) -> Dynamic>;
	var onmessage : Null<(ev:IMessageEvent) -> Dynamic>;
	var onmessageerror : Null<(ev:IMessageEvent) -> Dynamic>;
	var onoffline : Null<(ev:IEvent) -> Dynamic>;
	var ononline : Null<(ev:IEvent) -> Dynamic>;
	var onpagehide : Null<(ev:IPageTransitionEvent) -> Dynamic>;
	var onpageshow : Null<(ev:IPageTransitionEvent) -> Dynamic>;
	var onpopstate : Null<(ev:IPopStateEvent) -> Dynamic>;
	var onrejectionhandled : Null<(ev:IEvent) -> Dynamic>;
	var onstorage : Null<(ev:IStorageEvent) -> Dynamic>;
	var onunhandledrejection : Null<(ev:IPromiseRejectionEvent) -> Dynamic>;
	var onunload : Null<(ev:IEvent) -> Dynamic>;
	final localStorage : IStorage;
	final origin : String;
	function clearInterval(?handle:Float):Void;
	function clearTimeout(?handle:Float):Void;
	@:overload(function(image:ImageBitmapSource, sx:Float, sy:Float, sw:Float, sh:Float):ts.lib.IPromise<IImageBitmap> { })
	function createImageBitmap(image:ImageBitmapSource):ts.lib.IPromise<IImageBitmap>;
	function fetch(input:RequestInfo, ?init:RequestInit):ts.lib.IPromise<IResponse>;
	function queueMicrotask(callback:ts.lib.IFunction):Void;
	function setInterval(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	function setTimeout(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	final sessionStorage : IStorage;
	static var prototype : IWindow;
}