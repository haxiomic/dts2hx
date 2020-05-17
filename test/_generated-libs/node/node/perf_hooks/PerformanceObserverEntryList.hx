package node.perf_hooks;

typedef PerformanceObserverEntryList = {
	function getEntries():Array<PerformanceEntry>;
	function getEntriesByName(name:String, ?type:String):Array<PerformanceEntry>;
	function getEntriesByType(type:String):Array<PerformanceEntry>;
};