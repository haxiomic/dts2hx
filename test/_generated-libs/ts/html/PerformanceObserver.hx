package ts.html;
@:native("PerformanceObserver") extern class PerformanceObserver {
	function new(callback:PerformanceObserverCallback);
	function disconnect():Void;
	function observe(?options:PerformanceObserverInit):Void;
	function takeRecords():std.Array<IPerformanceEntry>;
	static var prototype : IPerformanceObserver;
	static final supportedEntryTypes : ts.lib.ReadonlyArray<String>;
}