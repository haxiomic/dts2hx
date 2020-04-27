package js.html;
@:native("PerformanceObserver") @tsInterface extern class PerformanceObserver {
	function new(callback:PerformanceObserverCallback);
	function disconnect():Void;
	function observe(?options:PerformanceObserverInit):Void;
	function takeRecords():std.Array<PerformanceEntry>;
	static var prototype : PerformanceObserver;
	static final supportedEntryTypes : js.lib.ReadonlyArray<String>;
}