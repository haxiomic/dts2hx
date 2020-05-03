package ts.html;
typedef IPerformanceObserver = {
	function disconnect():Void;
	function observe(?options:PerformanceObserverInit):Void;
	function takeRecords():PerformanceEntryList;
};