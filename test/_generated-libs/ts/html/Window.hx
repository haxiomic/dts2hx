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
	var offscreenBuffering : haxe.extern.EitherType<String, Bool>;
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
	final orientation : haxe.extern.EitherType<String, Float>;
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
	function postMessage(message:Any, targetOrigin:String, ?transfer:std.Array<haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<IMessagePort, IImageBitmap>>>):Void;
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
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	static var prototype : IWindow;
}