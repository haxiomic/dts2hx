package ts.html;
@:native("PerformanceObserverEntryList") extern class PerformanceObserverEntryList {
	function new();
	function getEntries():PerformanceEntryList;
	function getEntriesByName(name:String, ?type:String):PerformanceEntryList;
	function getEntriesByType(type:String):PerformanceEntryList;
	static var prototype : PerformanceObserverEntryList;
}