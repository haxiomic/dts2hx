package ts.html;
@:native("PerformanceObserver") extern class PerformanceObserver {
	function new(callback:PerformanceObserverCallback);
	function disconnect():Void;
	function observe(?options:PerformanceObserverInit):Void;
	function takeRecords():PerformanceEntryList;
	static var prototype : IPerformanceObserver;
	static final supportedEntryTypes : ts.lib.ReadonlyArray<String>;
}