package ts.html;
@:native("ApplicationCache") extern class ApplicationCache {
	function new();
	var oncached : Null<(ev:IEvent) -> Dynamic>;
	var onchecking : Null<(ev:IEvent) -> Dynamic>;
	var ondownloading : Null<(ev:IEvent) -> Dynamic>;
	var onerror : Null<(ev:IEvent) -> Dynamic>;
	var onnoupdate : Null<(ev:IEvent) -> Dynamic>;
	var onobsolete : Null<(ev:IEvent) -> Dynamic>;
	var onprogress : Null<(ev:IProgressEvent<IApplicationCache>) -> Dynamic>;
	var onupdateready : Null<(ev:IEvent) -> Dynamic>;
	final status : Float;
	function abort():Void;
	function swapCache():Void;
	function update():Void;
	final CHECKING : Float;
	final DOWNLOADING : Float;
	final IDLE : Float;
	final OBSOLETE : Float;
	final UNCACHED : Float;
	final UPDATEREADY : Float;
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
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	static var prototype : IApplicationCache;
	@:native("CHECKING")
	static final CHECKING_ : Float;
	@:native("DOWNLOADING")
	static final DOWNLOADING_ : Float;
	@:native("IDLE")
	static final IDLE_ : Float;
	@:native("OBSOLETE")
	static final OBSOLETE_ : Float;
	@:native("UNCACHED")
	static final UNCACHED_ : Float;
	@:native("UPDATEREADY")
	static final UPDATEREADY_ : Float;
}