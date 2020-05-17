package global;

typedef JQueryKeyEventObject = {
	var char : String;
	var charCode : Float;
	var key : String;
	var keyCode : Float;
	var altKey : Bool;
	var ctrlKey : Bool;
	/**
		Indicates whether the META key was pressed when the event fired.
	**/
	var metaKey : Bool;
	var shiftKey : Bool;
	/**
		The current DOM element within the event bubbling phase.
	**/
	var currentTarget : js.html.DOMElement;
	/**
		An optional object of data passed to an event method when the current executing handler is bound.
	**/
	var data : Dynamic;
	/**
		The element where the currently-called jQuery event handler was attached.
	**/
	var delegateTarget : js.html.DOMElement;
	/**
		Returns whether event.preventDefault() was ever called on this event object.
	**/
	function isDefaultPrevented():Bool;
	/**
		Returns whether event.stopImmediatePropagation() was ever called on this event object.
	**/
	function isImmediatePropagationStopped():Bool;
	/**
		Returns whether event.stopPropagation() was ever called on this event object.
	**/
	function isPropagationStopped():Bool;
	/**
		The namespace specified when the event was triggered.
	**/
	var namespace : String;
	/**
		The browser's original Event object.
	**/
	var originalEvent : js.html.Event;
	/**
		If this method is called, the default action of the event will not be triggered.
	**/
	function preventDefault():Dynamic;
	/**
		The other DOM element involved in the event, if any.
	**/
	var relatedTarget : js.html.DOMElement;
	/**
		The last value returned by an event handler that was triggered by this event, unless the value was undefined.
	**/
	var result : Dynamic;
	/**
		Keeps the rest of the handlers from being executed and prevents the event from bubbling up the DOM tree.
	**/
	function stopImmediatePropagation():Void;
	/**
		Prevents the event from bubbling up the DOM tree, preventing any parent handlers from being notified of the event.
	**/
	function stopPropagation():Void;
	/**
		The DOM element that initiated the event.
	**/
	var target : js.html.DOMElement;
	/**
		The mouse position relative to the left edge of the document.
	**/
	var pageX : Float;
	/**
		The mouse position relative to the top edge of the document.
	**/
	var pageY : Float;
	/**
		For key or mouse events, this property indicates the specific key or button that was pressed.
	**/
	var which : Float;
	/**
		Returns true or false depending on how event was initialized. True if event goes through its target's ancestors in reverse tree order, and false otherwise.
	**/
	final bubbles : Bool;
	var cancelBubble : Bool;
	/**
		Returns true or false depending on how event was initialized. Its return value does not always carry meaning, but true can indicate that part of the operation during which event was dispatched, can be canceled by invoking the preventDefault() method.
	**/
	final cancelable : Bool;
	/**
		Returns true or false depending on how event was initialized. True if event invokes listeners past a ShadowRoot node that is the root of its target, and false otherwise.
	**/
	final composed : Bool;
	/**
		Returns true if preventDefault() was invoked successfully to indicate cancelation, and false otherwise.
	**/
	final defaultPrevented : Bool;
	/**
		Returns the event's phase, which is one of NONE, CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE.
	**/
	final eventPhase : Float;
	/**
		Returns true if event was dispatched by the user agent, and false otherwise.
	**/
	final isTrusted : Bool;
	var returnValue : Bool;
	final srcElement : Null<js.html.EventTarget>;
	/**
		Returns the event's timestamp as the number of milliseconds measured relative to the time origin.
	**/
	final timeStamp : Float;
	/**
		Returns the type of event, e.g. "click", "hashchange", or "submit".
	**/
	final type : String;
	/**
		Returns the invocation target objects of event's path (objects on which listeners will be invoked), except for any nodes in shadow trees of which the shadow root's mode is "closed" that are not reachable from event's currentTarget.
	**/
	function composedPath():Array<js.html.EventTarget>;
	function initEvent(type:String, ?bubbles:Bool, ?cancelable:Bool):Void;
	final AT_TARGET : Float;
	final BUBBLING_PHASE : Float;
	final CAPTURING_PHASE : Float;
	final NONE : Float;
};