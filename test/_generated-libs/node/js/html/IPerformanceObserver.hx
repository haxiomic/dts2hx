package js.html;

/**
	The **`PerformanceObserver`** interface is used to observe performance measurement events and be notified of new PerformanceEntry as they are recorded in the browser's _performance timeline_.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserver)
	
	`PerformanceObserver` is a global reference for `import { PerformanceObserver } from 'node:node:perf_hooks'`
**/
typedef IPerformanceObserver = {
	/**
		The **`disconnect()`** method of the PerformanceObserver interface is used to stop the performance observer from receiving any PerformanceEntry events.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserver/disconnect)
	**/
	function disconnect():Void;
	/**
		The **`observe()`** method of the **PerformanceObserver** interface is used to specify the set of performance entry types to observe.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserver/observe)
	**/
	function observe(?options:js.html.PerformanceObserverInit):Void;
	/**
		The **`takeRecords()`** method of the PerformanceObserver interface returns the current list of PerformanceEntry objects stored in the performance observer, emptying it out.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserver/takeRecords)
	**/
	function takeRecords():PerformanceEntryList;
};