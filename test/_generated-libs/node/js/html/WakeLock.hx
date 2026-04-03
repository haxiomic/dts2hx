package js.html;

/**
	The **`WakeLock`** interface of the Screen Wake Lock API can be used to request a lock that prevents device screens from dimming or locking when an application needs to keep running.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLock)
**/
@:native("WakeLock") extern class WakeLock {
	function new();
	/**
		The **`request()`** method of the WakeLock interface returns a Promise that fulfills with a WakeLockSentinel object if the system screen wake lock is granted.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLock/request)
	**/
	function request(?type:String):js.lib.Promise<WakeLockSentinel>;
	static var prototype : WakeLock;
}