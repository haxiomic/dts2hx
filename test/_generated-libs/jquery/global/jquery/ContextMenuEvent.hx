package global.jquery;

typedef ContextMenuEvent<TDelegateTarget, TData, TCurrentTarget, TTarget> = {
	/**
		The other DOM element involved in the event, if any.
	**/
	@:optional
	var relatedTarget : Any;
	/**
		Describes the nature of the event.
	**/
	var type : String;
	var button : Float;
	var buttons : Float;
	var clientX : Float;
	var clientY : Float;
	var offsetX : Float;
	var offsetY : Float;
	/**
		The mouse position relative to the left edge of the document.
	**/
	var pageX : Float;
	/**
		The mouse position relative to the top edge of the document.
	**/
	var pageY : Float;
	var screenX : Float;
	var screenY : Float;
	var toElement : js.html.DOMElement;
	var pointerId : Null<Any>;
	var pointerType : Null<Any>;
	var char : Null<Any>;
	var charCode : Null<Any>;
	var key : Null<Any>;
	var keyCode : Null<Any>;
	var changedTouches : Null<Any>;
	var targetTouches : Null<Any>;
	var touches : Null<Any>;
	/**
		For key or mouse events, this property indicates the specific key or button that was pressed.
	**/
	var which : Float;
	var altKey : Bool;
	var ctrlKey : Bool;
	/**
		Indicates whether the META key was pressed when the event fired.
	**/
	var metaKey : Bool;
	var shiftKey : Bool;
	@:optional
	var originalEvent : js.html.MouseEvent;
	var bubbles : Bool;
	var cancelable : Bool;
	var eventPhase : Float;
	var detail : Float;
	var view : js.html.Window;
	/**
		The current DOM element within the event bubbling phase.
	**/
	var currentTarget : TCurrentTarget;
	/**
		The element where the currently-called jQuery event handler was attached.
	**/
	var delegateTarget : TDelegateTarget;
	/**
		The DOM element that initiated the event.
	**/
	var target : TTarget;
	/**
		An optional object of data passed to an event method when the current executing handler is bound.
	**/
	var data : TData;
	/**
		The namespace specified when the event was triggered.
	**/
	@:optional
	var namespace : String;
	/**
		The last value returned by an event handler that was triggered by this event, unless the value was undefined.
	**/
	@:optional
	var result : Dynamic;
	/**
		The difference in milliseconds between the time the browser created the event and January 1, 1970.
	**/
	var timeStamp : Float;
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
		If this method is called, the default action of the event will not be triggered.
	**/
	function preventDefault():Void;
	/**
		Keeps the rest of the handlers from being executed and prevents the event from bubbling up the DOM tree.
	**/
	function stopImmediatePropagation():Void;
	/**
		Prevents the event from bubbling up the DOM tree, preventing any parent handlers from being notified of the event.
	**/
	function stopPropagation():Void;
};