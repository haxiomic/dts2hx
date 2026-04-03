package js.html;

/**
	The **`LockManager`** interface of the Web Locks API provides methods for requesting a new Lock object and querying for an existing `Lock` object.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/LockManager)
**/
@:native("LockManager") extern class LockManager {
	function new();
	/**
		The **`query()`** method of the LockManager interface returns a Promise that resolves with an object containing information about held and pending locks.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LockManager/query)
	**/
	function query():js.lib.Promise<LockManagerSnapshot>;
	/**
		The **`request()`** method of the LockManager interface requests a Lock object with parameters specifying its name and characteristics.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LockManager/request)
	**/
	@:overload(function<T>(name:String, options:LockOptions, callback:LockGrantedCallback<T>):js.lib.Promise<T> { })
	function request<T>(name:String, callback:LockGrantedCallback<T>):js.lib.Promise<T>;
	static var prototype : LockManager;
}