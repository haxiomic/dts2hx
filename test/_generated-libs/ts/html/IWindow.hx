package ts.html;
/**
	A window containing a DOM document; the document property points to the DOM document loaded in that window.
**/
typedef IWindow = {
	final applicationCache : ApplicationCache;
	final caches : CacheStorage;
	final clientInformation : Navigator;
	final closed : Bool;
	final crypto : Crypto;
	var customElements : CustomElementRegistry;
	var defaultStatus : String;
	final devicePixelRatio : Float;
	final doNotTrack : String;
	final document : Document;
	final event : Null<Event>;
	final external : External;
	final frameElement : Element;
	final frames : Window;
	final history : History;
	final innerHeight : Float;
	final innerWidth : Float;
	final isSecureContext : Bool;
	final length : Float;
	var location : Location;
	final locationbar : BarProp;
	final menubar : BarProp;
	final msContentScript : ExtensionScriptApis;
	var name : String;
	final navigator : Navigator;
	var offscreenBuffering : ts.AnyOf2<String, Bool>;
	var oncompassneedscalibration : Null<(ev:Event) -> Dynamic>;
	var ondevicelight : Null<(ev:DeviceLightEvent) -> Dynamic>;
	var ondevicemotion : Null<(ev:DeviceMotionEvent) -> Dynamic>;
	var ondeviceorientation : Null<(ev:DeviceOrientationEvent) -> Dynamic>;
	var ondeviceorientationabsolute : Null<(ev:DeviceOrientationEvent) -> Dynamic>;
	var onmousewheel : Null<(ev:Event) -> Dynamic>;
	var onmsgesturechange : Null<(ev:Event) -> Dynamic>;
	var onmsgesturedoubletap : Null<(ev:Event) -> Dynamic>;
	var onmsgestureend : Null<(ev:Event) -> Dynamic>;
	var onmsgesturehold : Null<(ev:Event) -> Dynamic>;
	var onmsgesturestart : Null<(ev:Event) -> Dynamic>;
	var onmsgesturetap : Null<(ev:Event) -> Dynamic>;
	var onmsinertiastart : Null<(ev:Event) -> Dynamic>;
	var onmspointercancel : Null<(ev:Event) -> Dynamic>;
	var onmspointerdown : Null<(ev:Event) -> Dynamic>;
	var onmspointerenter : Null<(ev:Event) -> Dynamic>;
	var onmspointerleave : Null<(ev:Event) -> Dynamic>;
	var onmspointermove : Null<(ev:Event) -> Dynamic>;
	var onmspointerout : Null<(ev:Event) -> Dynamic>;
	var onmspointerover : Null<(ev:Event) -> Dynamic>;
	var onmspointerup : Null<(ev:Event) -> Dynamic>;
	var onorientationchange : Null<(ev:Event) -> Dynamic>;
	var onreadystatechange : Null<(ev:ProgressEvent<Window>) -> Dynamic>;
	var onvrdisplayactivate : Null<(ev:Event) -> Dynamic>;
	var onvrdisplayblur : Null<(ev:Event) -> Dynamic>;
	var onvrdisplayconnect : Null<(ev:Event) -> Dynamic>;
	var onvrdisplaydeactivate : Null<(ev:Event) -> Dynamic>;
	var onvrdisplaydisconnect : Null<(ev:Event) -> Dynamic>;
	var onvrdisplayfocus : Null<(ev:Event) -> Dynamic>;
	var onvrdisplaypointerrestricted : Null<(ev:Event) -> Dynamic>;
	var onvrdisplaypointerunrestricted : Null<(ev:Event) -> Dynamic>;
	var onvrdisplaypresentchange : Null<(ev:Event) -> Dynamic>;
	var opener : Dynamic;
	final orientation : ts.AnyOf2<String, Float>;
	final outerHeight : Float;
	final outerWidth : Float;
	final pageXOffset : Float;
	final pageYOffset : Float;
	final parent : Window;
	final performance : Performance;
	final personalbar : BarProp;
	final screen : Screen;
	final screenLeft : Float;
	final screenTop : Float;
	final screenX : Float;
	final screenY : Float;
	final scrollX : Float;
	final scrollY : Float;
	final scrollbars : BarProp;
	final self : Dynamic;
	final speechSynthesis : SpeechSynthesis;
	var status : String;
	final statusbar : BarProp;
	final styleMedia : StyleMedia;
	final toolbar : BarProp;
	final top : Window;
	final window : Dynamic;
	function alert(?message:Dynamic):Void;
	function blur():Void;
	function captureEvents():Void;
	function close():Void;
	function confirm(?message:String):Bool;
	function departFocus(navigationReason:NavigationReason, origin:FocusNavigationOrigin):Void;
	function focus():Void;
	function getComputedStyle(elt:Element, ?pseudoElt:String):CSSStyleDeclaration;
	function getMatchedCSSRules(elt:Element, ?pseudoElt:String):CSSRuleList;
	function getSelection():Null<Selection>;
	function matchMedia(query:String):MediaQueryList;
	function moveBy(x:Float, y:Float):Void;
	function moveTo(x:Float, y:Float):Void;
	function msWriteProfilerMark(profilerMarkName:String):Void;
	function open(?url:String, ?target:String, ?features:String, ?replace:Bool):Null<Window>;
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
	function webkitConvertPointFromNodeToPage(node:Node, pt:WebKitPoint):WebKitPoint;
	function webkitConvertPointFromPageToNode(node:Node, pt:WebKitPoint):WebKitPoint;
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
	function dispatchEvent(event:Event):Bool;
	function cancelAnimationFrame(handle:Float):Void;
	function requestAnimationFrame(callback:FrameRequestCallback):Float;
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:UIEvent) -> Dynamic>;
	var onanimationcancel : Null<(ev:AnimationEvent) -> Dynamic>;
	var onanimationend : Null<(ev:AnimationEvent) -> Dynamic>;
	var onanimationiteration : Null<(ev:AnimationEvent) -> Dynamic>;
	var onanimationstart : Null<(ev:AnimationEvent) -> Dynamic>;
	var onauxclick : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:FocusEvent) -> Dynamic>;
	var oncancel : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:Event) -> Dynamic>;
	var oncanplaythrough : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:MouseEvent) -> Dynamic>;
	var onclose : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:MouseEvent) -> Dynamic>;
	var oncuechange : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:DragEvent) -> Dynamic>;
	var ondragexit : Null<(ev:Event) -> Dynamic>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:DragEvent) -> Dynamic>;
	var ondrop : Null<(ev:DragEvent) -> Dynamic>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : OnErrorEventHandler;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:FocusEvent) -> Dynamic>;
	var ongotpointercapture : Null<(ev:PointerEvent) -> Dynamic>;
	var oninput : Null<(ev:Event) -> Dynamic>;
	var oninvalid : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:KeyboardEvent) -> Dynamic>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:KeyboardEvent) -> Dynamic>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:KeyboardEvent) -> Dynamic>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:Event) -> Dynamic>;
	var onloadend : Null<(ev:ProgressEvent<EventTarget>) -> Dynamic>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:Event) -> Dynamic>;
	var onlostpointercapture : Null<(ev:PointerEvent) -> Dynamic>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:MouseEvent) -> Dynamic>;
	var onmouseenter : Null<(ev:MouseEvent) -> Dynamic>;
	var onmouseleave : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:MouseEvent) -> Dynamic>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:Event) -> Dynamic>;
	var onpointercancel : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerdown : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerenter : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerleave : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointermove : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerout : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerover : Null<(ev:PointerEvent) -> Dynamic>;
	var onpointerup : Null<(ev:PointerEvent) -> Dynamic>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:ProgressEvent<EventTarget>) -> Dynamic>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:Event) -> Dynamic>;
	var onresize : Null<(ev:UIEvent) -> Dynamic>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:Event) -> Dynamic>;
	var onsecuritypolicyviolation : Null<(ev:SecurityPolicyViolationEvent) -> Dynamic>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:Event) -> Dynamic>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:Event) -> Dynamic>;
	var onselectionchange : Null<(ev:Event) -> Dynamic>;
	var onselectstart : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:Event) -> Dynamic>;
	var onsubmit : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:Event) -> Dynamic>;
	var ontoggle : Null<(ev:Event) -> Dynamic>;
	var ontouchcancel : Null<(ev:TouchEvent) -> Dynamic>;
	var ontouchend : Null<(ev:TouchEvent) -> Dynamic>;
	var ontouchmove : Null<(ev:TouchEvent) -> Dynamic>;
	var ontouchstart : Null<(ev:TouchEvent) -> Dynamic>;
	var ontransitioncancel : Null<(ev:TransitionEvent) -> Dynamic>;
	var ontransitionend : Null<(ev:TransitionEvent) -> Dynamic>;
	var ontransitionrun : Null<(ev:TransitionEvent) -> Dynamic>;
	var ontransitionstart : Null<(ev:TransitionEvent) -> Dynamic>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:Event) -> Dynamic>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:Event) -> Dynamic>;
	var onwheel : Null<(ev:WheelEvent) -> Dynamic>;
	final indexedDB : IDBFactory;
	function atob(encodedString:String):String;
	function btoa(rawString:String):String;
	final console : Console;
	var onafterprint : Null<(ev:Event) -> Dynamic>;
	var onbeforeprint : Null<(ev:Event) -> Dynamic>;
	var onbeforeunload : Null<(ev:BeforeUnloadEvent) -> Dynamic>;
	var onhashchange : Null<(ev:HashChangeEvent) -> Dynamic>;
	var onlanguagechange : Null<(ev:Event) -> Dynamic>;
	var onmessage : Null<(ev:MessageEvent) -> Dynamic>;
	var onmessageerror : Null<(ev:MessageEvent) -> Dynamic>;
	var onoffline : Null<(ev:Event) -> Dynamic>;
	var ononline : Null<(ev:Event) -> Dynamic>;
	var onpagehide : Null<(ev:PageTransitionEvent) -> Dynamic>;
	var onpageshow : Null<(ev:PageTransitionEvent) -> Dynamic>;
	var onpopstate : Null<(ev:PopStateEvent) -> Dynamic>;
	var onrejectionhandled : Null<(ev:Event) -> Dynamic>;
	var onstorage : Null<(ev:StorageEvent) -> Dynamic>;
	var onunhandledrejection : Null<(ev:PromiseRejectionEvent) -> Dynamic>;
	var onunload : Null<(ev:Event) -> Dynamic>;
	final localStorage : Storage;
	final origin : String;
	function clearInterval(?handle:Float):Void;
	function clearTimeout(?handle:Float):Void;
	@:overload(function(image:ImageBitmapSource, sx:Float, sy:Float, sw:Float, sh:Float):ts.lib.Promise<ImageBitmap> { })
	function createImageBitmap(image:ImageBitmapSource):ts.lib.Promise<ImageBitmap>;
	function fetch(input:RequestInfo, ?init:RequestInit):ts.lib.Promise<Response>;
	function queueMicrotask(callback:ts.lib.Function):Void;
	function setInterval(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	function setTimeout(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	final sessionStorage : Storage;
};