package js.html;
@:native("TextEvent") @tsInterface extern class TextEvent {
	function new();
	final data : String;
	function initTextEvent(typeArg:String, canBubbleArg:Bool, cancelableArg:Bool, viewArg:Window, dataArg:String, inputMethod:Float, locale:String):Void;
	final DOM_INPUT_METHOD_DROP : Float;
	final DOM_INPUT_METHOD_HANDWRITING : Float;
	final DOM_INPUT_METHOD_IME : Float;
	final DOM_INPUT_METHOD_KEYBOARD : Float;
	final DOM_INPUT_METHOD_MULTIMODAL : Float;
	final DOM_INPUT_METHOD_OPTION : Float;
	final DOM_INPUT_METHOD_PASTE : Float;
	final DOM_INPUT_METHOD_SCRIPT : Float;
	final DOM_INPUT_METHOD_UNKNOWN : Float;
	final DOM_INPUT_METHOD_VOICE : Float;
	final detail : Float;
	final view : Null<Window>;
	final which : Float;
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
		Returns the object whose event listener's callback is currently being invoked.
	**/
	final currentTarget : Null<EventTarget>;
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
	final srcElement : Null<EventTarget>;
	/**
		Returns the object to which event is dispatched (its target).
	**/
	final target : Null<EventTarget>;
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
	function composedPath():std.Array<EventTarget>;
	function initEvent(type:String, ?bubbles:Bool, ?cancelable:Bool):Void;
	/**
		If invoked when the cancelable attribute value is true, and while executing a listener for the event with passive set to false, signals to the operation that caused event to be dispatched that it needs to be canceled.
	**/
	function preventDefault():Void;
	/**
		Invoking this method prevents event from reaching any registered event listeners after the current one finishes running and, when dispatched in a tree, also prevents event from reaching any other objects.
	**/
	function stopImmediatePropagation():Void;
	/**
		When dispatched in a tree, invoking this method prevents event from reaching any objects other than the current object.
	**/
	function stopPropagation():Void;
	final AT_TARGET : Float;
	final BUBBLING_PHASE : Float;
	final CAPTURING_PHASE : Float;
	final NONE : Float;
	static var prototype : TextEvent;
	@:native("DOM_INPUT_METHOD_DROP")
	static final DOM_INPUT_METHOD_DROP_ : Float;
	@:native("DOM_INPUT_METHOD_HANDWRITING")
	static final DOM_INPUT_METHOD_HANDWRITING_ : Float;
	@:native("DOM_INPUT_METHOD_IME")
	static final DOM_INPUT_METHOD_IME_ : Float;
	@:native("DOM_INPUT_METHOD_KEYBOARD")
	static final DOM_INPUT_METHOD_KEYBOARD_ : Float;
	@:native("DOM_INPUT_METHOD_MULTIMODAL")
	static final DOM_INPUT_METHOD_MULTIMODAL_ : Float;
	@:native("DOM_INPUT_METHOD_OPTION")
	static final DOM_INPUT_METHOD_OPTION_ : Float;
	@:native("DOM_INPUT_METHOD_PASTE")
	static final DOM_INPUT_METHOD_PASTE_ : Float;
	@:native("DOM_INPUT_METHOD_SCRIPT")
	static final DOM_INPUT_METHOD_SCRIPT_ : Float;
	@:native("DOM_INPUT_METHOD_UNKNOWN")
	static final DOM_INPUT_METHOD_UNKNOWN_ : Float;
	@:native("DOM_INPUT_METHOD_VOICE")
	static final DOM_INPUT_METHOD_VOICE_ : Float;
}