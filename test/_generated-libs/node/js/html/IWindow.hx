package js.html;

/**
	The **`Window`** interface represents a window containing a DOM document; the `document` property points to the DOM document loaded in that window.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window)
**/
typedef IWindow = {
	final clientInformation : js.html.Navigator;
	/**
		The **`Window.closed`** read-only property indicates whether the referenced window is closed or not.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/closed)
	**/
	final closed : Bool;
	/**
		The **`cookieStore`** read-only property of the Window interface returns a reference to the CookieStore object for the current document context.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/cookieStore)
	**/
	final cookieStore : CookieStore;
	/**
		The **`customElements`** read-only property of the Window interface returns a reference to the CustomElementRegistry object, which can be used to register new custom elements and get information about previously registered custom elements.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/customElements)
	**/
	final customElements : CustomElementRegistry;
	/**
		The **`devicePixelRatio`** of Window interface returns the ratio of the resolution in _physical pixels_ to the resolution in _CSS pixels_ for the current display device.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/devicePixelRatio)
	**/
	final devicePixelRatio : Float;
	/**
		**`window.document`** returns a reference to the document contained in the window.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/document)
	**/
	final document : js.html.Document;
	/**
		The read-only Window property **`event`** returns the Event which is currently being handled by the site's code.
	**/
	final event : Null<js.html.Event>;
	/**
		The `external` property of the Window API returns an instance of the `External` interface, which was intended to contain functions related to adding external search providers to the browser.
	**/
	final external : js.html.External;
	/**
		The **`Window.frameElement`** property returns the element (such as iframe or object) in which the window is embedded.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/frameElement)
	**/
	final frameElement : Null<js.html.DOMElement>;
	/**
		Returns the window itself, which is an array-like object, listing the direct sub-frames of the current window.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/frames)
	**/
	final frames : js.html.Window;
	/**
		The `Window.history` read-only property returns a reference to the History object, which provides an interface for manipulating the browser _session history_ (pages visited in the tab or frame that the current page is loaded in).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/history)
	**/
	final history : js.html.History;
	/**
		The read-only **`innerHeight`** property of the including the height of the horizontal scroll bar, if present.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/innerHeight)
	**/
	final innerHeight : Float;
	/**
		The read-only Window property **`innerWidth`** returns the interior width of the window in pixels (that is, the width of the window's layout viewport).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/innerWidth)
	**/
	final innerWidth : Float;
	/**
		Returns the number of frames (either frame or A number.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/length)
	**/
	final length : Float;
	/**
		The **`Window.location`** read-only property returns a Location object with information about the current location of the document.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/location)
	**/
	var location : js.html.Location;
	/**
		Returns the `locationbar` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/locationbar)
	**/
	final locationbar : js.html.BarProp;
	/**
		Returns the `menubar` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/menubar)
	**/
	final menubar : js.html.BarProp;
	/**
		The `Window.name` property gets/sets the name of the window's browsing context.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/name)
	**/
	var name : String;
	/**
		The **`Window.navigator`** read-only property returns a reference to the Navigator object, which has methods and properties about the application running the script.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/navigator)
	**/
	final navigator : js.html.Navigator;
	/**
		Available only in secure contexts.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/devicemotion_event)
	**/
	@:optional
	dynamic function ondevicemotion(ev:js.html.DeviceMotionEvent):Dynamic;
	/**
		Available only in secure contexts.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/deviceorientation_event)
	**/
	@:optional
	dynamic function ondeviceorientation(ev:js.html.DeviceOrientationEvent):Dynamic;
	/**
		Available only in secure contexts.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/deviceorientationabsolute_event)
	**/
	@:optional
	dynamic function ondeviceorientationabsolute(ev:js.html.DeviceOrientationEvent):Dynamic;
	@:optional
	dynamic function onorientationchange(ev:js.html.Event):Dynamic;
	/**
		The Window interface's **`opener`** property returns a reference to the window that opened the window, either with Window.open, or by navigating a link with a `target` attribute.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/opener)
	**/
	var opener : Dynamic;
	/**
		Returns the orientation in degrees (in 90-degree increments) of the viewport relative to the device's natural orientation.
	**/
	final orientation : Float;
	/**
		The **`originAgentCluster`** read-only property of the Window interface returns `true` if this window belongs to an _origin-keyed agent cluster_: this means that the operating system has provided dedicated resources (for example an operating system process) to this window's origin that are not shared with windows from other origins.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/originAgentCluster)
	**/
	final originAgentCluster : Bool;
	/**
		The **`Window.outerHeight`** read-only property returns the height in pixels of the whole browser window, including any sidebar, window chrome, and window-resizing borders/handles.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/outerHeight)
	**/
	final outerHeight : Float;
	/**
		**`Window.outerWidth`** read-only property returns the width of the outside of the browser window.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/outerWidth)
	**/
	final outerWidth : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollX)
	**/
	final pageXOffset : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollY)
	**/
	final pageYOffset : Float;
	/**
		The **`Window.parent`** property is a reference to the parent of the current window or subframe.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/parent)
	**/
	final parent : js.html.Window;
	/**
		Returns the `personalbar` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/personalbar)
	**/
	final personalbar : js.html.BarProp;
	/**
		The Window property **`screen`** returns a reference to the screen object associated with the window.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screen)
	**/
	final screen : js.html.Screen;
	/**
		The **`Window.screenLeft`** read-only property returns the horizontal distance, in CSS pixels, from the left border of the user's browser viewport to the left side of the screen.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screenLeft)
	**/
	final screenLeft : Float;
	/**
		The **`Window.screenTop`** read-only property returns the vertical distance, in CSS pixels, from the top border of the user's browser viewport to the top side of the screen.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screenTop)
	**/
	final screenTop : Float;
	/**
		The **`Window.screenX`** read-only property returns the horizontal distance, in CSS pixels, of the left border of the user's browser viewport to the left side of the screen.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screenX)
	**/
	final screenX : Float;
	/**
		The **`Window.screenY`** read-only property returns the vertical distance, in CSS pixels, of the top border of the user's browser viewport to the top edge of the screen.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screenY)
	**/
	final screenY : Float;
	/**
		The read-only **`scrollX`** property of the Window interface returns the number of pixels by which the document is currently scrolled horizontally.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollX)
	**/
	final scrollX : Float;
	/**
		The read-only **`scrollY`** property of the Window interface returns the number of pixels by which the document is currently scrolled vertically.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollY)
	**/
	final scrollY : Float;
	/**
		Returns the `scrollbars` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollbars)
	**/
	final scrollbars : js.html.BarProp;
	/**
		The **`Window.self`** read-only property returns the window itself, as a WindowProxy.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/self)
	**/
	final self : Dynamic;
	/**
		The `speechSynthesis` read-only property of the Window object returns a SpeechSynthesis object, which is the entry point into using Web Speech API speech synthesis functionality.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/speechSynthesis)
	**/
	final speechSynthesis : js.html.SpeechSynthesis;
	/**
		The **`status`** property of the bar at the bottom of the browser window.
	**/
	var status : String;
	/**
		Returns the `statusbar` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/statusbar)
	**/
	final statusbar : js.html.BarProp;
	/**
		Returns the `toolbar` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/toolbar)
	**/
	final toolbar : js.html.BarProp;
	/**
		Returns a reference to the topmost window in the window hierarchy.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/top)
	**/
	final top : Null<js.html.Window>;
	/**
		The **`visualViewport`** read-only property of the Window interface returns a VisualViewport object representing the visual viewport for a given window, or `null` if current document is not fully active.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/visualViewport)
	**/
	final visualViewport : Null<js.html.VisualViewport>;
	/**
		The **`window`** property of a Window object points to the window object itself.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/window)
	**/
	final window : Dynamic;
	/**
		`window.alert()` instructs the browser to display a dialog with an optional message, and to wait until the user dismisses the dialog.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/alert)
	**/
	function alert(?message:Dynamic):Void;
	/**
		The **`Window.blur()`** method does nothing.
	**/
	function blur():Void;
	/**
		The **`window.cancelIdleCallback()`** method cancels a callback previously scheduled with window.requestIdleCallback().
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/cancelIdleCallback)
	**/
	function cancelIdleCallback(handle:Float):Void;
	/**
		The **`Window.captureEvents()`** method does nothing.
	**/
	function captureEvents():Void;
	/**
		The **`Window.close()`** method closes the current window, or the window on which it was called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/close)
	**/
	function close():Void;
	/**
		`window.confirm()` instructs the browser to display a dialog with an optional message, and to wait until the user either confirms or cancels the dialog.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/confirm)
	**/
	function confirm(?message:String):Bool;
	/**
		Makes a request to bring the window to the front.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/focus)
	**/
	function focus():Void;
	/**
		The **`Window.getComputedStyle()`** method returns an object containing the values of all CSS properties of an element, after applying active stylesheets and resolving any basic computation those values may contain.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/getComputedStyle)
	**/
	function getComputedStyle(elt:js.html.DOMElement, ?pseudoElt:String):js.html.CSSStyleDeclaration;
	/**
		The **`getSelection()`** method of the Window interface returns the Selection object associated with the window's document, representing the range of text selected by the user or the current position of the caret.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/getSelection)
	**/
	function getSelection():Null<js.html.Selection>;
	/**
		The Window interface's **`matchMedia()`** method returns a new MediaQueryList object that can then be used to determine if the document matches the media query string, as well as to monitor the document to detect when it matches (or stops matching) that media query.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/matchMedia)
	**/
	function matchMedia(query:String):js.html.MediaQueryList;
	/**
		The **`moveBy()`** method of the Window interface moves the current window by a specified amount.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/moveBy)
	**/
	function moveBy(x:Float, y:Float):Void;
	/**
		The **`moveTo()`** method of the Window interface moves the current window to the specified coordinates.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/moveTo)
	**/
	function moveTo(x:Float, y:Float):Void;
	/**
		The **`open()`** method of the `Window` interface loads a specified resource into a new or existing browsing context (that is, a tab, a window, or an iframe) under a specified name.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/open)
	**/
	function open(?url:ts.AnyOf2<String, js.html.URL>, ?target:String, ?features:String):Null<js.html.Window>;
	/**
		The **`window.postMessage()`** method safely enables cross-origin communication between Window objects; _e.g.,_ between a page and a pop-up that it spawned, or between a page and an iframe embedded within it.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/postMessage)
	**/
	@:overload(function(message:Dynamic, ?options:WindowPostMessageOptions):Void { })
	function postMessage(message:Dynamic, targetOrigin:String, ?transfer:Array<Transferable>):Void;
	/**
		Opens the print dialog to print the current document.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/print)
	**/
	function print():Void;
	/**
		`window.prompt()` instructs the browser to display a dialog with an optional message prompting the user to input some text, and to wait until the user either submits the text or cancels the dialog.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/prompt)
	**/
	function prompt(?message:String, ?_default:String):Null<String>;
	/**
		Releases the window from trapping events of a specific type.
	**/
	function releaseEvents():Void;
	/**
		The **`window.requestIdleCallback()`** method queues a function to be called during a browser's idle periods.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/requestIdleCallback)
	**/
	function requestIdleCallback(callback:IdleRequestCallback, ?options:IdleRequestOptions):Float;
	/**
		The **`Window.resizeBy()`** method resizes the current window by a specified amount.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/resizeBy)
	**/
	function resizeBy(x:Float, y:Float):Void;
	/**
		The **`Window.resizeTo()`** method dynamically resizes the window.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/resizeTo)
	**/
	function resizeTo(width:Float, height:Float):Void;
	/**
		The **`Window.scroll()`** method scrolls the window to a particular place in the document.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scroll)
	**/
	@:overload(function(x:Float, y:Float):Void { })
	function scroll(?options:js.html.ScrollToOptions):Void;
	/**
		The **`Window.scrollBy()`** method scrolls the document in the window by the given amount.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
	**/
	@:overload(function(x:Float, y:Float):Void { })
	function scrollBy(?options:js.html.ScrollToOptions):Void;
	/**
		**`Window.scrollTo()`** scrolls to a particular set of coordinates in the document.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
	**/
	@:overload(function(x:Float, y:Float):Void { })
	function scrollTo(?options:js.html.ScrollToOptions):Void;
	/**
		The **`window.stop()`** stops further resource loading in the current browsing context, equivalent to the stop button in the browser.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/stop)
	**/
	function stop():Void;
	/**
		
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/cancelAnimationFrame)
	**/
	function cancelAnimationFrame(handle:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/requestAnimationFrame)
	**/
	function requestAnimationFrame(callback:FrameRequestCallback):Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/abort_event)
	**/
	@:optional
	dynamic function onabort(ev:js.html.UIEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationcancel_event)
	**/
	@:optional
	dynamic function onanimationcancel(ev:js.html.AnimationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationend_event)
	**/
	@:optional
	dynamic function onanimationend(ev:js.html.AnimationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationiteration_event)
	**/
	@:optional
	dynamic function onanimationiteration(ev:js.html.AnimationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationstart_event)
	**/
	@:optional
	dynamic function onanimationstart(ev:js.html.AnimationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/auxclick_event)
	**/
	@:optional
	dynamic function onauxclick(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/beforeinput_event)
	**/
	@:optional
	dynamic function onbeforeinput(ev:js.html.InputEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/beforematch_event)
	**/
	@:optional
	dynamic function onbeforematch(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/beforetoggle_event)
	**/
	@:optional
	dynamic function onbeforetoggle(ev:ToggleEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/blur_event)
	**/
	@:optional
	dynamic function onblur(ev:js.html.FocusEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/cancel_event)
	**/
	@:optional
	dynamic function oncancel(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/canplay_event)
	**/
	@:optional
	dynamic function oncanplay(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/canplaythrough_event)
	**/
	@:optional
	dynamic function oncanplaythrough(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/change_event)
	**/
	@:optional
	dynamic function onchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/click_event)
	**/
	@:optional
	dynamic function onclick(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/close_event)
	**/
	@:optional
	dynamic function onclose(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/contextlost_event)
	**/
	@:optional
	dynamic function oncontextlost(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/contextmenu_event)
	**/
	@:optional
	dynamic function oncontextmenu(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/contextrestored_event)
	**/
	@:optional
	dynamic function oncontextrestored(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/copy_event)
	**/
	@:optional
	dynamic function oncopy(ev:js.html.ClipboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTrackElement/cuechange_event)
	**/
	@:optional
	dynamic function oncuechange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/cut_event)
	**/
	@:optional
	dynamic function oncut(ev:js.html.ClipboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/dblclick_event)
	**/
	@:optional
	dynamic function ondblclick(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/drag_event)
	**/
	@:optional
	dynamic function ondrag(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragend_event)
	**/
	@:optional
	dynamic function ondragend(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragenter_event)
	**/
	@:optional
	dynamic function ondragenter(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragleave_event)
	**/
	@:optional
	dynamic function ondragleave(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragover_event)
	**/
	@:optional
	dynamic function ondragover(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragstart_event)
	**/
	@:optional
	dynamic function ondragstart(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/drop_event)
	**/
	@:optional
	dynamic function ondrop(ev:js.html.DragEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/durationchange_event)
	**/
	@:optional
	dynamic function ondurationchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/emptied_event)
	**/
	@:optional
	dynamic function onemptied(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/ended_event)
	**/
	@:optional
	dynamic function onended(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/error_event)
	**/
	@:optional
	dynamic function onerror(event:ts.AnyOf2<String, js.html.Event>, ?source:String, ?lineno:Float, ?colno:Float, ?error:js.lib.Error):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/focus_event)
	**/
	@:optional
	dynamic function onfocus(ev:js.html.FocusEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/formdata_event)
	**/
	@:optional
	dynamic function onformdata(ev:FormDataEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/gotpointercapture_event)
	**/
	@:optional
	dynamic function ongotpointercapture(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/input_event)
	**/
	@:optional
	dynamic function oninput(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/invalid_event)
	**/
	@:optional
	dynamic function oninvalid(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/keydown_event)
	**/
	@:optional
	dynamic function onkeydown(ev:js.html.KeyboardEvent):Dynamic;
	@:optional
	dynamic function onkeypress(ev:js.html.KeyboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/keyup_event)
	**/
	@:optional
	dynamic function onkeyup(ev:js.html.KeyboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/load_event)
	**/
	@:optional
	dynamic function onload(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadeddata_event)
	**/
	@:optional
	dynamic function onloadeddata(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadedmetadata_event)
	**/
	@:optional
	dynamic function onloadedmetadata(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadstart_event)
	**/
	@:optional
	dynamic function onloadstart(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/lostpointercapture_event)
	**/
	@:optional
	dynamic function onlostpointercapture(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mousedown_event)
	**/
	@:optional
	dynamic function onmousedown(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseenter_event)
	**/
	@:optional
	dynamic function onmouseenter(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseleave_event)
	**/
	@:optional
	dynamic function onmouseleave(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mousemove_event)
	**/
	@:optional
	dynamic function onmousemove(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseout_event)
	**/
	@:optional
	dynamic function onmouseout(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseover_event)
	**/
	@:optional
	dynamic function onmouseover(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseup_event)
	**/
	@:optional
	dynamic function onmouseup(ev:js.html.MouseEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/paste_event)
	**/
	@:optional
	dynamic function onpaste(ev:js.html.ClipboardEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/pause_event)
	**/
	@:optional
	dynamic function onpause(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/play_event)
	**/
	@:optional
	dynamic function onplay(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/playing_event)
	**/
	@:optional
	dynamic function onplaying(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointercancel_event)
	**/
	@:optional
	dynamic function onpointercancel(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerdown_event)
	**/
	@:optional
	dynamic function onpointerdown(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerenter_event)
	**/
	@:optional
	dynamic function onpointerenter(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerleave_event)
	**/
	@:optional
	dynamic function onpointerleave(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointermove_event)
	**/
	@:optional
	dynamic function onpointermove(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerout_event)
	**/
	@:optional
	dynamic function onpointerout(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerover_event)
	**/
	@:optional
	dynamic function onpointerover(ev:js.html.PointerEvent):Dynamic;
	/**
		Available only in secure contexts.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerrawupdate_event)
	**/
	@:optional
	dynamic function onpointerrawupdate(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerup_event)
	**/
	@:optional
	dynamic function onpointerup(ev:js.html.PointerEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/progress_event)
	**/
	@:optional
	dynamic function onprogress(ev:ProgressEvent_<js.html.EventTarget>):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/ratechange_event)
	**/
	@:optional
	dynamic function onratechange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reset_event)
	**/
	@:optional
	dynamic function onreset(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/resize_event)
	**/
	@:optional
	dynamic function onresize(ev:js.html.UIEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/scroll_event)
	**/
	@:optional
	dynamic function onscroll(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/scrollend_event)
	**/
	@:optional
	dynamic function onscrollend(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/securitypolicyviolation_event)
	**/
	@:optional
	dynamic function onsecuritypolicyviolation(ev:js.html.SecurityPolicyViolationEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/seeked_event)
	**/
	@:optional
	dynamic function onseeked(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/seeking_event)
	**/
	@:optional
	dynamic function onseeking(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/select_event)
	**/
	@:optional
	dynamic function onselect(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/selectionchange_event)
	**/
	@:optional
	dynamic function onselectionchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/selectstart_event)
	**/
	@:optional
	dynamic function onselectstart(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/slotchange_event)
	**/
	@:optional
	dynamic function onslotchange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/stalled_event)
	**/
	@:optional
	dynamic function onstalled(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/submit_event)
	**/
	@:optional
	dynamic function onsubmit(ev:SubmitEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/suspend_event)
	**/
	@:optional
	dynamic function onsuspend(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/timeupdate_event)
	**/
	@:optional
	dynamic function ontimeupdate(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/toggle_event)
	**/
	@:optional
	dynamic function ontoggle(ev:ToggleEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchcancel_event)
	**/
	@:optional
	dynamic function ontouchcancel(ev:js.html.TouchEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchend_event)
	**/
	@:optional
	dynamic function ontouchend(ev:js.html.TouchEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchmove_event)
	**/
	@:optional
	dynamic function ontouchmove(ev:js.html.TouchEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchstart_event)
	**/
	@:optional
	dynamic function ontouchstart(ev:js.html.TouchEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitioncancel_event)
	**/
	@:optional
	dynamic function ontransitioncancel(ev:js.html.TransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionend_event)
	**/
	@:optional
	dynamic function ontransitionend(ev:js.html.TransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionrun_event)
	**/
	@:optional
	dynamic function ontransitionrun(ev:js.html.TransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionstart_event)
	**/
	@:optional
	dynamic function ontransitionstart(ev:js.html.TransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/volumechange_event)
	**/
	@:optional
	dynamic function onvolumechange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/waiting_event)
	**/
	@:optional
	dynamic function onwaiting(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onwebkitanimationend(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onwebkitanimationiteration(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onwebkitanimationstart(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onwebkittransitionend(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/wheel_event)
	**/
	@:optional
	dynamic function onwheel(ev:js.html.WheelEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/afterprint_event)
	**/
	@:optional
	dynamic function onafterprint(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/beforeprint_event)
	**/
	@:optional
	dynamic function onbeforeprint(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/beforeunload_event)
	**/
	@:optional
	dynamic function onbeforeunload(ev:js.html.BeforeUnloadEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/gamepadconnected_event)
	**/
	@:optional
	dynamic function ongamepadconnected(ev:js.html.GamepadEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/gamepaddisconnected_event)
	**/
	@:optional
	dynamic function ongamepaddisconnected(ev:js.html.GamepadEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/hashchange_event)
	**/
	@:optional
	dynamic function onhashchange(ev:js.html.HashChangeEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/languagechange_event)
	**/
	@:optional
	dynamic function onlanguagechange(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/message_event)
	**/
	@:optional
	dynamic function onmessage(ev:MessageEvent_<Dynamic>):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/messageerror_event)
	**/
	@:optional
	dynamic function onmessageerror(ev:MessageEvent_<Dynamic>):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/offline_event)
	**/
	@:optional
	dynamic function onoffline(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/online_event)
	**/
	@:optional
	dynamic function ononline(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/pagehide_event)
	**/
	@:optional
	dynamic function onpagehide(ev:js.html.PageTransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/pagereveal_event)
	**/
	@:optional
	dynamic function onpagereveal(ev:PageRevealEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/pageshow_event)
	**/
	@:optional
	dynamic function onpageshow(ev:js.html.PageTransitionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/pageswap_event)
	**/
	@:optional
	dynamic function onpageswap(ev:PageSwapEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/popstate_event)
	**/
	@:optional
	dynamic function onpopstate(ev:js.html.PopStateEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/rejectionhandled_event)
	**/
	@:optional
	dynamic function onrejectionhandled(ev:PromiseRejectionEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/storage_event)
	**/
	@:optional
	dynamic function onstorage(ev:js.html.StorageEvent):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/unhandledrejection_event)
	**/
	@:optional
	dynamic function onunhandledrejection(ev:PromiseRejectionEvent):Dynamic;
	@:optional
	dynamic function onunload(ev:js.html.Event):Dynamic;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/localStorage)
	**/
	final localStorage : js.html.Storage;
	/**
		Available only in secure contexts.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/caches)
	**/
	final caches : js.html.CacheStorage;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/crossOriginIsolated)
	**/
	final crossOriginIsolated : Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/crypto)
	**/
	final crypto : js.html.Crypto;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/indexedDB)
	**/
	final indexedDB : js.html.idb.Factory;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/isSecureContext)
	**/
	final isSecureContext : Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/origin)
	**/
	final origin : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/performance)
	**/
	final performance : js.html.Performance;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/atob)
	**/
	function atob(data:String):String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/btoa)
	**/
	function btoa(data:String):String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/clearInterval)
	**/
	function clearInterval(id:Null<Float>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/clearTimeout)
	**/
	function clearTimeout(id:Null<Float>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
	**/
	@:overload(function(image:ImageBitmapSource, sx:Float, sy:Float, sw:Float, sh:Float, ?options:ImageBitmapOptions):js.lib.Promise<js.html.ImageBitmap> { })
	function createImageBitmap(image:ImageBitmapSource, ?options:ImageBitmapOptions):js.lib.Promise<js.html.ImageBitmap>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/fetch)
	**/
	function fetch(input:ts.AnyOf3<String, js.html.Request, js.html.URL>, ?init:js.html.RequestInit):js.lib.Promise<js.html.Response>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/queueMicrotask)
	**/
	function queueMicrotask(callback:VoidFunction):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/reportError)
	**/
	function reportError(e:Dynamic):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
	**/
	function setInterval(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
	**/
	function setTimeout(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/structuredClone)
	**/
	function structuredClone<T>(value:T, ?options:StructuredSerializeOptions):T;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/sessionStorage)
	**/
	final sessionStorage : js.html.Storage;
};