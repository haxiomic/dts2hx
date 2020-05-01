package ts.html;
/**
	Stores information on a media query applied to a document, and handles sending notifications to listeners when the media query state change (i.e. when the media query test starts or stops evaluating to true).
**/
extern typedef IMediaQueryList = {
	final matches : Bool;
	final media : String;
	var onchange : Null<(ev:IMediaQueryListEvent) -> Any>;
	function addListener(listener:Null<(ev:IMediaQueryListEvent) -> Any>):Void;
	function removeListener(listener:Null<(ev:IMediaQueryListEvent) -> Any>):Void;
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
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
};