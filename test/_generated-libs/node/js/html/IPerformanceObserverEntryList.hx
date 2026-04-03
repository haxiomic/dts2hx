package js.html;

/**
	The **`PerformanceObserverEntryList`** interface is a list of PerformanceEntry that were explicitly observed via the PerformanceObserver.observe method.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserverEntryList)
	
	`PerformanceObserverEntryList` is a global reference for `import { PerformanceObserverEntryList } from 'node:node:perf_hooks'`
**/
typedef IPerformanceObserverEntryList = {
	/**
		The **`getEntries()`** method of the PerformanceObserverEntryList interface returns a list of explicitly observed PerformanceEntry objects.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserverEntryList/getEntries)
	**/
	function getEntries():PerformanceEntryList;
	/**
		The **`getEntriesByName()`** method of the PerformanceObserverEntryList interface returns a list of explicitly observed PerformanceEntry objects for a given PerformanceEntry.name and PerformanceEntry.entryType.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserverEntryList/getEntriesByName)
	**/
	function getEntriesByName(name:String, ?type:String):PerformanceEntryList;
	/**
		The **`getEntriesByType()`** method of the PerformanceObserverEntryList returns a list of explicitly _observed_ PerformanceEntry objects for a given PerformanceEntry.entryType.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserverEntryList/getEntriesByType)
	**/
	function getEntriesByType(type:String):PerformanceEntryList;
};