package ts.lib;
/**
	A <select> HTML Element. These elements also share all of the properties and methods of other HTML elements via the HTMLElement interface.
**/
@:native("HTMLSelectElement") extern class HTMLSelectElement {
	function new();
	var autocomplete : String;
	/**
		Provides a way to direct a user to a specific field when a document loads. This can provide both direction and convenience for a user, reducing the need to click or tab to a field when a page opens. This attribute is true when present on an element, and false when missing.
	**/
	var autofocus : Bool;
	var disabled : Bool;
	/**
		Retrieves a reference to the form that the object is embedded in.
	**/
	final form : Null<IHTMLFormElement>;
	final labels : NodeListOf<ts.html.IHTMLLabelElement>;
	/**
		Sets or retrieves the number of objects in a collection.
	**/
	var length : Float;
	/**
		Sets or retrieves the Boolean value indicating whether multiple items can be selected from a list.
	**/
	var multiple : Bool;
	/**
		Sets or retrieves the name of the object.
	**/
	var name : String;
	final options : ts.html.IHTMLOptionsCollection;
	/**
		When present, marks an element that can't be submitted without a value.
	**/
	var required : Bool;
	/**
		Sets or retrieves the index of the selected option in a select object.
	**/
	var selectedIndex : Float;
	final selectedOptions : HTMLCollectionOf<ts.html.IHTMLOptionElement>;
	/**
		Sets or retrieves the number of rows in the list box.
	**/
	var size : Float;
	/**
		Retrieves the type of select control based on the value of the MULTIPLE attribute.
	**/
	final type : String;
	/**
		Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
	**/
	final validationMessage : String;
	/**
		Returns a  ValidityState object that represents the validity states of an element.
	**/
	final validity : ts.html.IValidityState;
	/**
		Sets or retrieves the value which is returned to the server when the form control is submitted.
	**/
	var value : String;
	/**
		Returns whether an element will successfully validate based on forms validation rules and constraints.
	**/
	final willValidate : Bool;
	/**
		Adds an element to the areas, controlRange, or options collection.
	**/
	function add(element:haxe.extern.EitherType<ts.html.IHTMLOptGroupElement, ts.html.IHTMLOptionElement>, ?before:haxe.extern.EitherType<Float, ts.html.IHTMLElement>):Void;
	/**
		Returns whether a form will validate when it is submitted, without having to submit it.
	**/
	function checkValidity():Bool;
	/**
		Retrieves a select object or an object from an options collection.
	**/
	function item(index:Float):Null<ts.html.IElement>;
	/**
		Retrieves a select object or an object from an options collection.
	**/
	function namedItem(name:String):Null<ts.html.IHTMLOptionElement>;
	/**
		Removes an element from the collection.
	**/
	@:overload(function(index:Float):Void { })
	function remove():Void;
	function reportValidity():Bool;
	/**
		Sets a custom error message that is displayed when a form is submitted.
	**/
	function setCustomValidity(error:String):Void;
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
	@:overload(function(type:String, listener:haxe.extern.EitherType<ts.html.EventListener, ts.html.EventListenerObject>, ?options:haxe.extern.EitherType<Bool, ts.html.AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<ts.html.IEvent, haxe.extern.EitherType<ts.html.IClipboardEvent, haxe.extern.EitherType<ts.html.IUIEvent, haxe.extern.EitherType<ts.html.IDragEvent, haxe.extern.EitherType<ts.html.IMouseEvent, haxe.extern.EitherType<ts.html.IErrorEvent, haxe.extern.EitherType<ts.html.IFocusEvent, haxe.extern.EitherType<ts.html.IKeyboardEvent, haxe.extern.EitherType<ts.html.IPointerEvent, haxe.extern.EitherType<ts.html.IProgressEvent<ts.html.IEventTarget>, haxe.extern.EitherType<ts.html.ISecurityPolicyViolationEvent, haxe.extern.EitherType<ts.html.ITouchEvent, haxe.extern.EitherType<ts.html.ITransitionEvent, haxe.extern.EitherType<ts.html.IWheelEvent, ts.html.IAnimationEvent>>>>>>>>>>>>>>) -> Any, ?options:haxe.extern.EitherType<Bool, ts.html.AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<ts.html.EventListener, ts.html.EventListenerObject>, ?options:haxe.extern.EitherType<Bool, ts.html.EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<ts.html.IEvent, haxe.extern.EitherType<ts.html.IClipboardEvent, haxe.extern.EitherType<ts.html.IUIEvent, haxe.extern.EitherType<ts.html.IDragEvent, haxe.extern.EitherType<ts.html.IMouseEvent, haxe.extern.EitherType<ts.html.IErrorEvent, haxe.extern.EitherType<ts.html.IFocusEvent, haxe.extern.EitherType<ts.html.IKeyboardEvent, haxe.extern.EitherType<ts.html.IPointerEvent, haxe.extern.EitherType<ts.html.IProgressEvent<ts.html.IEventTarget>, haxe.extern.EitherType<ts.html.ISecurityPolicyViolationEvent, haxe.extern.EitherType<ts.html.ITouchEvent, haxe.extern.EitherType<ts.html.ITransitionEvent, haxe.extern.EitherType<ts.html.IWheelEvent, ts.html.IAnimationEvent>>>>>>>>>>>>>>) -> Any, ?options:haxe.extern.EitherType<Bool, ts.html.EventListenerOptions>):Void;
	static var prototype : IHTMLSelectElement;
}