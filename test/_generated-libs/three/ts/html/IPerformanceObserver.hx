package ts.html;
extern typedef IPerformanceObserver = {
	function disconnect():Void;
	function observe(?options:PerformanceObserverInit):Void;
	function takeRecords():std.Array<IPerformanceEntry>;
};