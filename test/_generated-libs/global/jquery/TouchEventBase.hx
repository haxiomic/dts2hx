package global.jquery;
extern typedef TouchEventBase<TDelegateTarget, TData, TCurrentTarget, TTarget> = {
	/**
		The other DOM element involved in the event, if any.
	**/
	@:optional
	var relatedTarget : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var button : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var buttons : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var clientX : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var clientY : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var offsetX : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var offsetY : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	/**
		The mouse position relative to the left edge of the document.
	**/
	var pageX : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	/**
		The mouse position relative to the top edge of the document.
	**/
	var pageY : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var screenX : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var screenY : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var toElement : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var pointerId : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var pointerType : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var char : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var charCode : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var key : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var keyCode : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var changedTouches : ts.lib.ITouchList;
	var targetTouches : ts.lib.ITouchList;
	var touches : ts.lib.ITouchList;
	/**
		For key or mouse events, this property indicates the specific key or button that was pressed.
	**/
	var which : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	var altKey : Bool;
	var ctrlKey : Bool;
	/**
		Indicates whether the META key was pressed when the event fired.
	**/
	var metaKey : Bool;
	var shiftKey : Bool;
	@:optional
	var originalEvent : ts.html.ITouchEvent;
	var bubbles : Bool;
	var cancelable : Bool;
	var eventPhase : Float;
	var detail : Float;
	var view : ts.html.IWindow;
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