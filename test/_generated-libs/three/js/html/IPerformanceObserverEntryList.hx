package js.html;
extern typedef IPerformanceObserverEntryList = {
	function getEntries():std.Array<IPerformanceEntry>;
	function getEntriesByName(name:String, ?type:String):std.Array<IPerformanceEntry>;
	function getEntriesByType(type:String):std.Array<IPerformanceEntry>;
};