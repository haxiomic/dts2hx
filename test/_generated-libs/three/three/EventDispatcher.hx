package three;

/**
	JavaScript events for custom objects
**/
@:jsRequire("three", "EventDispatcher") extern class EventDispatcher {
	/**
		Creates eventDispatcher object. It needs to be call with '.call' to add the functionality to an object.
	**/
	function new();
	/**
		Adds a listener to an event type.
	**/
	function addEventListener(type:String, listener:(event:Event) -> Void):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener(type:String, listener:(event:Event) -> Void):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener(type:String, listener:(event:Event) -> Void):Void;
	/**
		Fire an event type.
	**/
	function dispatchEvent(event:{ var type : String; }):Void;
	static var prototype : EventDispatcher;
}