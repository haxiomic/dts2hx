package js.html;
@:native("PerformanceObserverEntryList") extern class PerformanceObserverEntryList {
	function new();
	function getEntries():std.Array<IPerformanceEntry>;
	function getEntriesByName(name:String, ?type:String):std.Array<IPerformanceEntry>;
	function getEntriesByType(type:String):std.Array<IPerformanceEntry>;
	static var prototype : IPerformanceObserverEntryList;
}