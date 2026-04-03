package js.html;

/**
	The **`Lock`** interface of the Web Locks API provides the name and mode of a lock.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Lock)
**/
@:native("Lock") extern class Lock {
	function new();
	/**
		The **`mode`** read-only property of the Lock interface returns the access mode passed to LockManager.request() when the lock was requested.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Lock/mode)
	**/
	final mode : LockMode;
	/**
		The **`name`** read-only property of the Lock interface returns the _name_ passed to The name of a lock is passed by script when the lock is requested.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Lock/name)
	**/
	final name : String;
	static var prototype : Lock;
}