package js.html;
/**
	A window containing a DOM document; the document property points to the DOM document loaded in that window.
**/
@:native("Window") @tsInterface extern class Window {
	function new();
	final applicationCache : ApplicationCache;
	final caches : CacheStorage;
	final clientInformation : js.lib.Navigator;
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
	final navigator : js.lib.Navigator;
	var offscreenBuffering : haxe.extern.EitherType<String, Bool>;
	var oncompassneedscalibration : Null<(ev:Event) -> Any>;
	var ondevicelight : Null<(ev:DeviceLightEvent) -> Any>;
	var ondevicemotion : Null<(ev:DeviceMotionEvent) -> Any>;
	var ondeviceorientation : Null<(ev:DeviceOrientationEvent) -> Any>;
	var ondeviceorientationabsolute : Null<(ev:DeviceOrientationEvent) -> Any>;
	var onmousewheel : Null<(ev:Event) -> Any>;
	var onmsgesturechange : Null<(ev:Event) -> Any>;
	var onmsgesturedoubletap : Null<(ev:Event) -> Any>;
	var onmsgestureend : Null<(ev:Event) -> Any>;
	var onmsgesturehold : Null<(ev:Event) -> Any>;
	var onmsgesturestart : Null<(ev:Event) -> Any>;
	var onmsgesturetap : Null<(ev:Event) -> Any>;
	var onmsinertiastart : Null<(ev:Event) -> Any>;
	var onmspointercancel : Null<(ev:Event) -> Any>;
	var onmspointerdown : Null<(ev:Event) -> Any>;
	var onmspointerenter : Null<(ev:Event) -> Any>;
	var onmspointerleave : Null<(ev:Event) -> Any>;
	var onmspointermove : Null<(ev:Event) -> Any>;
	var onmspointerout : Null<(ev:Event) -> Any>;
	var onmspointerover : Null<(ev:Event) -> Any>;
	var onmspointerup : Null<(ev:Event) -> Any>;
	var onorientationchange : Null<(ev:Event) -> Any>;
	var onreadystatechange : Null<(ev:ProgressEvent<Window>) -> Any>;
	var onvrdisplayactivate : Null<(ev:Event) -> Any>;
	var onvrdisplayblur : Null<(ev:Event) -> Any>;
	var onvrdisplayconnect : Null<(ev:Event) -> Any>;
	var onvrdisplaydeactivate : Null<(ev:Event) -> Any>;
	var onvrdisplaydisconnect : Null<(ev:Event) -> Any>;
	var onvrdisplayfocus : Null<(ev:Event) -> Any>;
	var onvrdisplaypointerrestricted : Null<(ev:Event) -> Any>;
	var onvrdisplaypointerunrestricted : Null<(ev:Event) -> Any>;
	var onvrdisplaypresentchange : Null<(ev:Event) -> Any>;
	var opener : Any;
	final orientation : haxe.extern.EitherType<String, Float>;
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
	final self : Any;
	final speechSynthesis : SpeechSynthesis;
	var status : String;
	final statusbar : BarProp;
	final styleMedia : StyleMedia;
	final toolbar : BarProp;
	final top : Window;
	final window : Any;
	function alert(?message:Any):Void;
	function blur():Void;
	function captureEvents():Void;
	function close():Void;
	function confirm(?message:String):Bool;
	function departFocus(navigationReason:String, origin:FocusNavigationOrigin):Void;
	function focus():Void;
	function getComputedStyle(elt:Element, ?pseudoElt:String):js.lib.CSSStyleDeclaration;
	function getMatchedCSSRules(elt:Element, ?pseudoElt:String):js.lib.CSSRuleList;
	function getSelection():Null<Selection>;
	function matchMedia(query:String):MediaQueryList;
	function moveBy(x:Float, y:Float):Void;
	function moveTo(x:Float, y:Float):Void;
	function msWriteProfilerMark(profilerMarkName:String):Void;
	function open(?url:String, ?target:String, ?features:String, ?replace:Bool):Null<Window>;
	function postMessage(message:Any, targetOrigin:String, ?transfer:std.Array<haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<ImageBitmap, MessagePort>>>):Void;
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
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:Event):Bool;
	function cancelAnimationFrame(handle:Float):Void;
	function requestAnimationFrame(callback:FrameRequestCallback):Float;
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:UIEvent) -> Any>;
	var onanimationcancel : Null<(ev:AnimationEvent) -> Any>;
	var onanimationend : Null<(ev:AnimationEvent) -> Any>;
	var onanimationiteration : Null<(ev:AnimationEvent) -> Any>;
	var onanimationstart : Null<(ev:AnimationEvent) -> Any>;
	var onauxclick : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:FocusEvent) -> Any>;
	var oncancel : Null<(ev:Event) -> Any>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:Event) -> Any>;
	var oncanplaythrough : Null<(ev:Event) -> Any>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:Event) -> Any>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:MouseEvent) -> Any>;
	var onclose : Null<(ev:Event) -> Any>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:MouseEvent) -> Any>;
	var oncuechange : Null<(ev:Event) -> Any>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:DragEvent) -> Any>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:DragEvent) -> Any>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:DragEvent) -> Any>;
	var ondragexit : Null<(ev:Event) -> Any>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:DragEvent) -> Any>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:DragEvent) -> Any>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:DragEvent) -> Any>;
	var ondrop : Null<(ev:DragEvent) -> Any>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:Event) -> Any>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:Event) -> Any>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:Event) -> Any>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : Null<OnErrorEventHandlerNonNull>;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:FocusEvent) -> Any>;
	var ongotpointercapture : Null<(ev:PointerEvent) -> Any>;
	var oninput : Null<(ev:Event) -> Any>;
	var oninvalid : Null<(ev:Event) -> Any>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:KeyboardEvent) -> Any>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:KeyboardEvent) -> Any>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:KeyboardEvent) -> Any>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:Event) -> Any>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:Event) -> Any>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:Event) -> Any>;
	var onloadend : Null<(ev:ProgressEvent<EventTarget>) -> Any>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:Event) -> Any>;
	var onlostpointercapture : Null<(ev:PointerEvent) -> Any>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:MouseEvent) -> Any>;
	var onmouseenter : Null<(ev:MouseEvent) -> Any>;
	var onmouseleave : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:MouseEvent) -> Any>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:MouseEvent) -> Any>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:Event) -> Any>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:Event) -> Any>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:Event) -> Any>;
	var onpointercancel : Null<(ev:PointerEvent) -> Any>;
	var onpointerdown : Null<(ev:PointerEvent) -> Any>;
	var onpointerenter : Null<(ev:PointerEvent) -> Any>;
	var onpointerleave : Null<(ev:PointerEvent) -> Any>;
	var onpointermove : Null<(ev:PointerEvent) -> Any>;
	var onpointerout : Null<(ev:PointerEvent) -> Any>;
	var onpointerover : Null<(ev:PointerEvent) -> Any>;
	var onpointerup : Null<(ev:PointerEvent) -> Any>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:ProgressEvent<EventTarget>) -> Any>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:Event) -> Any>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:Event) -> Any>;
	var onresize : Null<(ev:UIEvent) -> Any>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:Event) -> Any>;
	var onsecuritypolicyviolation : Null<(ev:SecurityPolicyViolationEvent) -> Any>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:Event) -> Any>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:Event) -> Any>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:Event) -> Any>;
	var onselectionchange : Null<(ev:Event) -> Any>;
	var onselectstart : Null<(ev:Event) -> Any>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:Event) -> Any>;
	var onsubmit : Null<(ev:Event) -> Any>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:Event) -> Any>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:Event) -> Any>;
	var ontoggle : Null<(ev:Event) -> Any>;
	var ontouchcancel : Null<(ev:TouchEvent) -> Any>;
	var ontouchend : Null<(ev:TouchEvent) -> Any>;
	var ontouchmove : Null<(ev:TouchEvent) -> Any>;
	var ontouchstart : Null<(ev:TouchEvent) -> Any>;
	var ontransitioncancel : Null<(ev:TransitionEvent) -> Any>;
	var ontransitionend : Null<(ev:TransitionEvent) -> Any>;
	var ontransitionrun : Null<(ev:TransitionEvent) -> Any>;
	var ontransitionstart : Null<(ev:TransitionEvent) -> Any>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:Event) -> Any>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:Event) -> Any>;
	var onwheel : Null<(ev:WheelEvent) -> Any>;
	final indexedDB : IDBFactory;
	function atob(encodedString:String):String;
	function btoa(rawString:String):String;
	final console : Console;
	var onafterprint : Null<(ev:Event) -> Any>;
	var onbeforeprint : Null<(ev:Event) -> Any>;
	var onbeforeunload : Null<(ev:BeforeUnloadEvent) -> Any>;
	var onhashchange : Null<(ev:HashChangeEvent) -> Any>;
	var onlanguagechange : Null<(ev:Event) -> Any>;
	var onmessage : Null<(ev:MessageEvent) -> Any>;
	var onmessageerror : Null<(ev:MessageEvent) -> Any>;
	var onoffline : Null<(ev:Event) -> Any>;
	var ononline : Null<(ev:Event) -> Any>;
	var onpagehide : Null<(ev:PageTransitionEvent) -> Any>;
	var onpageshow : Null<(ev:PageTransitionEvent) -> Any>;
	var onpopstate : Null<(ev:PopStateEvent) -> Any>;
	var onrejectionhandled : Null<(ev:Event) -> Any>;
	var onstorage : Null<(ev:StorageEvent) -> Any>;
	var onunhandledrejection : Null<(ev:PromiseRejectionEvent) -> Any>;
	var onunload : Null<(ev:Event) -> Any>;
	final localStorage : Storage;
	final origin : String;
	function clearInterval(?handle:Float):Void;
	function clearTimeout(?handle:Float):Void;
	@:overload(function(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<ImageData, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, haxe.extern.EitherType<Blob, SVGImageElement>>>>>>>, sx:Float, sy:Float, sw:Float, sh:Float):js.lib.Promise<ImageBitmap> { })
	function createImageBitmap(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<ImageData, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, haxe.extern.EitherType<Blob, SVGImageElement>>>>>>>):js.lib.Promise<ImageBitmap>;
	function fetch(input:haxe.extern.EitherType<String, Request>, ?init:RequestInit):js.lib.Promise<Response>;
	function queueMicrotask(callback:js.lib.Function):Void;
	function setInterval(handler:haxe.extern.EitherType<String, js.lib.Function>, ?timeout:Float, arguments:std.Array<Any>):Float;
	function setTimeout(handler:haxe.extern.EitherType<String, js.lib.Function>, ?timeout:Float, arguments:std.Array<Any>):Float;
	final sessionStorage : Storage;
	static var prototype : Window;
}