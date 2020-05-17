package global.jquery;

/**
	jQuery's event system normalizes the event object according to W3C standards. The event object is guaranteed to be passed to the event handler (no checks for window.event required). It normalizes the target, relatedTarget, which, metaKey and pageX/Y properties and provides both stopPropagation() and preventDefault() methods.
	
	Those properties are all documented, and accompanied by examples, on the \`{@link http://api.jquery.com/category/events/event-object/ Event object}\` page.
	
	The standard events in the Document Object Model are: `blur`, `focus`, `load`, `resize`, `scroll`, `unload`, `beforeunload`, `click`, `dblclick`, `mousedown`, `mouseup`, `mousemove`, `mouseover`, `mouseout`, `mouseenter`, `mouseleave`, `change`, `select`, `submit`, `keydown`, `keypress`, and `keyup`. Since the DOM event names have predefined meanings for some elements, using them for other purposes is not recommended. jQuery's event model can trigger an event by any name on an element, and it is propagated up the DOM tree to which that element belongs, if any.
**/
typedef Event = {
	var bubbles : Null<Bool>;
	var cancelable : Null<Bool>;
	var eventPhase : Null<Float>;
	var detail : Null<Float>;
	var view : Null<js.html.Window>;
	var button : Null<Float>;
	var buttons : Null<Float>;
	var clientX : Null<Float>;
	var clientY : Null<Float>;
	var offsetX : Null<Float>;
	var offsetY : Null<Float>;
	/**
		The mouse position relative to the left edge of the document.
	**/
	var pageX : Null<Float>;
	/**
		The mouse position relative to the top edge of the document.
	**/
	var pageY : Null<Float>;
	var screenX : Null<Float>;
	var screenY : Null<Float>;
	var toElement : Null<js.html.DOMElement>;
	var pointerId : Null<Float>;
	var pointerType : Null<String>;
	var char : Null<String>;
	var charCode : Null<Float>;
	var key : Null<String>;
	var keyCode : Null<Float>;
	var changedTouches : Null<js.html.TouchList>;
	var targetTouches : Null<js.html.TouchList>;
	var touches : Null<js.html.TouchList>;
	/**
		For key or mouse events, this property indicates the specific key or button that was pressed.
	**/
	var which : Null<Float>;
	var altKey : Null<Bool>;
	var ctrlKey : Null<Bool>;
	/**
		Indicates whether the META key was pressed when the event fired.
	**/
	var metaKey : Null<Bool>;
	var shiftKey : Null<Bool>;
	/**
		The difference in milliseconds between the time the browser created the event and January 1, 1970.
	**/
	var timeStamp : Float;
	/**
		Describes the nature of the event.
	**/
	var type : String;
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