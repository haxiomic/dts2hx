package js.html;
@:native("PerformanceObserver") extern class PerformanceObserver {
	function new(callback:PerformanceObserverCallback);
	function disconnect():Void;
	function observe(?options:PerformanceObserverInit):Void;
	function takeRecords():std.Array<IPerformanceEntry>;
	static var prototype : IPerformanceObserver;
	static final supportedEntryTypes : js.lib.ReadonlyArray<String>;
}