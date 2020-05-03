package ts.html;
typedef IPerformanceObserverEntryList = {
	function getEntries():PerformanceEntryList;
	function getEntriesByName(name:String, ?type:String):PerformanceEntryList;
	function getEntriesByType(type:String):PerformanceEntryList;
};