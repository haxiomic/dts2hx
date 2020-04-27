package js.html;
@:native("PerformanceObserverEntryList") @tsInterface extern class PerformanceObserverEntryList {
	function new();
	function getEntries():std.Array<PerformanceEntry>;
	function getEntriesByName(name:String, ?type:String):std.Array<PerformanceEntry>;
	function getEntriesByType(type:String):std.Array<PerformanceEntry>;
	static var prototype : PerformanceObserverEntryList;
}