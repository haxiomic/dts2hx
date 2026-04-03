package js.html;

/**
	The **`NavigationPreloadManager`** interface of the Service Worker API provides methods for managing the preloading of resources in parallel with service worker bootup.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager)
**/
typedef INavigationPreloadManager = {
	/**
		The **`disable()`** method of the NavigationPreloadManager interface halts the automatic preloading of service-worker-managed resources previously started using NavigationPreloadManager.enable() It returns a promise that resolves with `undefined`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/disable)
	**/
	function disable():js.lib.Promise<ts.Undefined>;
	/**
		The **`enable()`** method of the NavigationPreloadManager interface is used to enable preloading of resources managed by the service worker.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/enable)
	**/
	function enable():js.lib.Promise<ts.Undefined>;
	/**
		The **`getState()`** method of the NavigationPreloadManager interface returns a Promise that resolves to an object with properties that indicate whether preload is enabled and what value will be sent in the Service-Worker-Navigation-Preload HTTP header.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/getState)
	**/
	function getState():js.lib.Promise<NavigationPreloadState>;
	/**
		The **`setHeaderValue()`** method of the NavigationPreloadManager interface sets the value of the Service-Worker-Navigation-Preload header that will be sent with requests resulting from a Window/fetch operation made during service worker navigation preloading.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/setHeaderValue)
	**/
	function setHeaderValue(value:String):js.lib.Promise<ts.Undefined>;
};