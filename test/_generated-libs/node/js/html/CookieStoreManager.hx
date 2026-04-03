package js.html;

/**
	The **`CookieStoreManager`** interface of the Cookie Store API allows service workers to subscribe to cookie change events.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStoreManager)
**/
@:native("CookieStoreManager") extern class CookieStoreManager {
	function new();
	/**
		The **`getSubscriptions()`** method of the CookieStoreManager interface returns a list of all the cookie change subscriptions for this ServiceWorkerRegistration.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStoreManager/getSubscriptions)
	**/
	function getSubscriptions():js.lib.Promise<Array<CookieStoreGetOptions>>;
	/**
		The **`subscribe()`** method of the CookieStoreManager interface subscribes a ServiceWorkerRegistration to cookie change events.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStoreManager/subscribe)
	**/
	@:overload(function(subscriptions:Iterable<CookieStoreGetOptions>):js.lib.Promise<ts.Undefined> { })
	function subscribe(subscriptions:Array<CookieStoreGetOptions>):js.lib.Promise<ts.Undefined>;
	/**
		The **`unsubscribe()`** method of the CookieStoreManager interface stops the ServiceWorkerRegistration from receiving previously subscribed events.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStoreManager/unsubscribe)
	**/
	@:overload(function(subscriptions:Iterable<CookieStoreGetOptions>):js.lib.Promise<ts.Undefined> { })
	function unsubscribe(subscriptions:Array<CookieStoreGetOptions>):js.lib.Promise<ts.Undefined>;
	static var prototype : CookieStoreManager;
}