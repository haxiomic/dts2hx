package ts.html;
/**
	A window containing a DOM document; the document property points to the DOM document loaded in that window.
**/
extern typedef IWindow = {
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
	var oncompassneedscalibration : Null<(ev:IEvent) -> Any>;
	var ondevicelight : Null<(ev:IDeviceLightEvent) -> Any>;
	var ondevicemotion : Null<(ev:IDeviceMotionEvent) -> Any>;
	var ondeviceorientation : Null<(ev:IDeviceOrientationEvent) -> Any>;
	var ondeviceorientationabsolute : Null<(ev:IDeviceOrientationEvent) -> Any>;
	var onmousewheel : Null<(ev:IEvent) -> Any>;
	var onmsgesturechange : Null<(ev:IEvent) -> Any>;
	var onmsgesturedoubletap : Null<(ev:IEvent) -> Any>;
	var onmsgestureend : Null<(ev:IEvent) -> Any>;
	var onmsgesturehold : Null<(ev:IEvent) -> Any>;
	var onmsgesturestart : Null<(ev:IEvent) -> Any>;
	var onmsgesturetap : Null<(ev:IEvent) -> Any>;
	var onmsinertiastart : Null<(ev:IEvent) -> Any>;
	var onmspointercancel : Null<(ev:IEvent) -> Any>;
	var onmspointerdown : Null<(ev:IEvent) -> Any>;
	var onmspointerenter : Null<(ev:IEvent) -> Any>;
	var onmspointerleave : Null<(ev:IEvent) -> Any>;
	var onmspointermove : Null<(ev:IEvent) -> Any>;
	var onmspointerout : Null<(ev:IEvent) -> Any>;
	var onmspointerover : Null<(ev:IEvent) -> Any>;
	var onmspointerup : Null<(ev:IEvent) -> Any>;
	var onorientationchange : Null<(ev:IEvent) -> Any>;
	var onreadystatechange : Null<(ev:IProgressEvent<IWindow>) -> Any>;
	var onvrdisplayactivate : Null<(ev:IEvent) -> Any>;
	var onvrdisplayblur : Null<(ev:IEvent) -> Any>;
	var onvrdisplayconnect : Null<(ev:IEvent) -> Any>;
	var onvrdisplaydeactivate : Null<(ev:IEvent) -> Any>;
	var onvrdisplaydisconnect : Null<(ev:IEvent) -> Any>;
	var onvrdisplayfocus : Null<(ev:IEvent) -> Any>;
	var onvrdisplaypointerrestricted : Null<(ev:IEvent) -> Any>;
	var onvrdisplaypointerunrestricted : Null<(ev:IEvent) -> Any>;
	var onvrdisplaypresentchange : Null<(ev:IEvent) -> Any>;
	var opener : Any;
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
	final self : Any;
	final speechSynthesis : ISpeechSynthesis;
	var status : String;
	final statusbar : IBarProp;
	final styleMedia : IStyleMedia;
	final toolbar : IBarProp;
	final top : IWindow;
	final window : Any;
	function alert(?message:Any):Void;
	function blur():Void;
	function captureEvents():Void;
	function close():Void;
	function confirm(?message:String):Bool;
	function departFocus(navigationReason:String, origin:FocusNavigationOrigin):Void;
	function focus():Void;
	function getComputedStyle(elt:IElement, ?pseudoElt:String):ts.lib.ICSSStyleDeclaration;
	function getMatchedCSSRules(elt:IElement, ?pseudoElt:String):ts.lib.ICSSRuleList;
	function getSelection():Null<ISelection>;
	function matchMedia(query:String):IMediaQueryList;
	function moveBy(x:Float, y:Float):Void;
	function moveTo(x:Float, y:Float):Void;
	function msWriteProfilerMark(profilerMarkName:String):Void;
	function open(?url:String, ?target:String, ?features:String, ?replace:Bool):Null<IWindow>;
	function postMessage(message:Any, targetOrigin:String, ?transfer:std.Array<ts.AnyOf3<ts.lib.IArrayBuffer, IMessagePort, IImageBitmap>>):Void;
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
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	function cancelAnimationFrame(handle:Float):Void;
	function requestAnimationFrame(callback:FrameRequestCallback):Float;
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:IUIEvent) -> Any>;
	var onanimationcancel : Null<(ev:IAnimationEvent) -> Any>;
	var onanimationend : Null<(ev:IAnimationEvent) -> Any>;
	var onanimationiteration : Null<(ev:IAnimationEvent) -> Any>;
	var onanimationstart : Null<(ev:IAnimationEvent) -> Any>;
	var onauxclick : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:IFocusEvent) -> Any>;
	var oncancel : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:IEvent) -> Any>;
	var oncanplaythrough : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:IMouseEvent) -> Any>;
	var onclose : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:IMouseEvent) -> Any>;
	var oncuechange : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:IDragEvent) -> Any>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:IDragEvent) -> Any>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:IDragEvent) -> Any>;
	var ondragexit : Null<(ev:IEvent) -> Any>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:IDragEvent) -> Any>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:IDragEvent) -> Any>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:IDragEvent) -> Any>;
	var ondrop : Null<(ev:IDragEvent) -> Any>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:IEvent) -> Any>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : Null<OnErrorEventHandlerNonNull>;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:IFocusEvent) -> Any>;
	var ongotpointercapture : Null<(ev:IPointerEvent) -> Any>;
	var oninput : Null<(ev:IEvent) -> Any>;
	var oninvalid : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:IKeyboardEvent) -> Any>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:IKeyboardEvent) -> Any>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:IKeyboardEvent) -> Any>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:IEvent) -> Any>;
	var onloadend : Null<(ev:IProgressEvent<IEventTarget>) -> Any>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:IEvent) -> Any>;
	var onlostpointercapture : Null<(ev:IPointerEvent) -> Any>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:IMouseEvent) -> Any>;
	var onmouseenter : Null<(ev:IMouseEvent) -> Any>;
	var onmouseleave : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:IMouseEvent) -> Any>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:IMouseEvent) -> Any>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:IEvent) -> Any>;
	var onpointercancel : Null<(ev:IPointerEvent) -> Any>;
	var onpointerdown : Null<(ev:IPointerEvent) -> Any>;
	var onpointerenter : Null<(ev:IPointerEvent) -> Any>;
	var onpointerleave : Null<(ev:IPointerEvent) -> Any>;
	var onpointermove : Null<(ev:IPointerEvent) -> Any>;
	var onpointerout : Null<(ev:IPointerEvent) -> Any>;
	var onpointerover : Null<(ev:IPointerEvent) -> Any>;
	var onpointerup : Null<(ev:IPointerEvent) -> Any>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:IProgressEvent<IEventTarget>) -> Any>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:IEvent) -> Any>;
	var onresize : Null<(ev:IUIEvent) -> Any>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:IEvent) -> Any>;
	var onsecuritypolicyviolation : Null<(ev:ISecurityPolicyViolationEvent) -> Any>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:IEvent) -> Any>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:IEvent) -> Any>;
	var onselectionchange : Null<(ev:IEvent) -> Any>;
	var onselectstart : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:IEvent) -> Any>;
	var onsubmit : Null<(ev:IEvent) -> Any>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:IEvent) -> Any>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:IEvent) -> Any>;
	var ontoggle : Null<(ev:IEvent) -> Any>;
	var ontouchcancel : Null<(ev:ITouchEvent) -> Any>;
	var ontouchend : Null<(ev:ITouchEvent) -> Any>;
	var ontouchmove : Null<(ev:ITouchEvent) -> Any>;
	var ontouchstart : Null<(ev:ITouchEvent) -> Any>;
	var ontransitioncancel : Null<(ev:ITransitionEvent) -> Any>;
	var ontransitionend : Null<(ev:ITransitionEvent) -> Any>;
	var ontransitionrun : Null<(ev:ITransitionEvent) -> Any>;
	var ontransitionstart : Null<(ev:ITransitionEvent) -> Any>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:IEvent) -> Any>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:IEvent) -> Any>;
	var onwheel : Null<(ev:IWheelEvent) -> Any>;
	final indexedDB : IIDBFactory;
	function atob(encodedString:String):String;
	function btoa(rawString:String):String;
	final console : IConsole;
	var onafterprint : Null<(ev:IEvent) -> Any>;
	var onbeforeprint : Null<(ev:IEvent) -> Any>;
	var onbeforeunload : Null<(ev:IBeforeUnloadEvent) -> Any>;
	var onhashchange : Null<(ev:IHashChangeEvent) -> Any>;
	var onlanguagechange : Null<(ev:IEvent) -> Any>;
	var onmessage : Null<(ev:IMessageEvent) -> Any>;
	var onmessageerror : Null<(ev:IMessageEvent) -> Any>;
	var onoffline : Null<(ev:IEvent) -> Any>;
	var ononline : Null<(ev:IEvent) -> Any>;
	var onpagehide : Null<(ev:IPageTransitionEvent) -> Any>;
	var onpageshow : Null<(ev:IPageTransitionEvent) -> Any>;
	var onpopstate : Null<(ev:IPopStateEvent) -> Any>;
	var onrejectionhandled : Null<(ev:IEvent) -> Any>;
	var onstorage : Null<(ev:IStorageEvent) -> Any>;
	var onunhandledrejection : Null<(ev:IPromiseRejectionEvent) -> Any>;
	var onunload : Null<(ev:IEvent) -> Any>;
	final localStorage : IStorage;
	final origin : String;
	function clearInterval(?handle:Float):Void;
	function clearTimeout(?handle:Float):Void;
	@:overload(function(image:ts.AnyOf8<IHTMLImageElement, IImageBitmap, ISVGImageElement, IHTMLVideoElement, IHTMLCanvasElement, IOffscreenCanvas, IBlob, IImageData>, sx:Float, sy:Float, sw:Float, sh:Float):ts.lib.IPromise<IImageBitmap> { })
	function createImageBitmap(image:ts.AnyOf8<IHTMLImageElement, IImageBitmap, ISVGImageElement, IHTMLVideoElement, IHTMLCanvasElement, IOffscreenCanvas, IBlob, IImageData>):ts.lib.IPromise<IImageBitmap>;
	function fetch(input:ts.AnyOf2<String, IRequest>, ?init:RequestInit):ts.lib.IPromise<IResponse>;
	function queueMicrotask(callback:ts.lib.IFunction):Void;
	function setInterval(handler:ts.AnyOf2<String, ts.lib.IFunction>, ?timeout:Float, arguments:haxe.extern.Rest<Any>):Float;
	function setTimeout(handler:ts.AnyOf2<String, ts.lib.IFunction>, ?timeout:Float, arguments:haxe.extern.Rest<Any>):Float;
	final sessionStorage : IStorage;
};