package ts.html;
/**
	<option> elements and inherits all classes and methods of the HTMLElement interface.
**/
@:native("HTMLOptionElement") extern class HTMLOptionElement {
	function new();
	/**
		Sets or retrieves the status of an option.
	**/
	var defaultSelected : Bool;
	var disabled : Bool;
	/**
		Retrieves a reference to the form that the object is embedded in.
	**/
	final form : Null<ts.lib.IHTMLFormElement>;
	/**
		Sets or retrieves the ordinal position of an option in a list box.
	**/
	final index : Float;
	/**
		Sets or retrieves a value that you can use to implement your own label functionality for the object.
	**/
	var label : String;
	/**
		Sets or retrieves whether the option in the list box is the default item.
	**/
	var selected : Bool;
	/**
		Sets or retrieves the text string specified by the option tag.
	**/
	var text : String;
	/**
		Sets or retrieves the value which is returned to the server when the form control is submitted.
	**/
	var value : String;
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
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
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
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	static var prototype : IHTMLOptionElement;
}