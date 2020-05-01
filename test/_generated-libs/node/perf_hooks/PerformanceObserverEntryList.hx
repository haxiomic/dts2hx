package node.perf_hooks;
typedef PerformanceObserverEntryList = {
	function getEntries():std.Array<PerformanceEntry>;
	function getEntriesByName(name:String, ?type:String):std.Array<PerformanceEntry>;
	function getEntriesByType(type:String):std.Array<PerformanceEntry>;
};