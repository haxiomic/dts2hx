package js.html;
/**
	This IndexedDB API interface provides a connection to a database; you can use an IDBDatabase object to open a transaction on your database then create, manipulate, and delete objects (data) in that database. The interface provides the only way to get and manage versions of the database.
**/
@:native("IDBDatabase") extern class IDBDatabase {
	function new();
	/**
		Returns the name of the database.
	**/
	final name : String;
	/**
		Returns a list of the names of object stores in the database.
	**/
	final objectStoreNames : js.lib.IDOMStringList;
	var onabort : Null<(ev:IEvent) -> Any>;
	var onclose : Null<(ev:IEvent) -> Any>;
	var onerror : Null<(ev:IEvent) -> Any>;
	var onversionchange : Null<(ev:IIDBVersionChangeEvent) -> Any>;
	/**
		Returns the version of the database.
	**/
	final version : Float;
	/**
		Closes the connection once all running transactions have finished.
	**/
	function close():Void;
	/**
		Creates a new object store with the given name and options and returns a new IDBObjectStore.
		
		Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
	**/
	function createObjectStore(name:String, ?optionalParameters:IDBObjectStoreParameters):js.lib.IIDBObjectStore;
	/**
		Deletes the object store with the given name.
		
		Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
	**/
	function deleteObjectStore(name:String):Void;
	/**
		Returns a new transaction with the given mode ("readonly" or "readwrite") and scope which can be a single object store name or an array of names.
	**/
	function transaction(storeNames:haxe.extern.EitherType<String, std.Array<String>>, ?mode:String):IIDBTransaction;
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
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	static var prototype : IIDBDatabase;
}