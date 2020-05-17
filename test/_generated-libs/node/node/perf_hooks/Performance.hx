package node.perf_hooks;

typedef Performance = {
	/**
		If name is not provided, removes all PerformanceFunction objects from the Performance Timeline.
		If name is provided, removes entries with name.
	**/
	function clearFunctions(?name:String):Void;
	/**
		If name is not provided, removes all PerformanceMark objects from the Performance Timeline.
		If name is provided, removes only the named mark.
	**/
	function clearMarks(?name:String):Void;
	/**
		If name is not provided, removes all PerformanceMeasure objects from the Performance Timeline.
		If name is provided, removes only objects whose performanceEntry.name matches name.
	**/
	function clearMeasures(?name:String):Void;
	/**
		Returns a list of all PerformanceEntry objects in chronological order with respect to performanceEntry.startTime.
	**/
	function getEntries():Array<PerformanceEntry>;
	/**
		Returns a list of all PerformanceEntry objects in chronological order with respect to performanceEntry.startTime
		whose performanceEntry.name is equal to name, and optionally, whose performanceEntry.entryType is equal to type.
	**/
	function getEntriesByName(name:String, ?type:String):Array<PerformanceEntry>;
	/**
		Returns a list of all PerformanceEntry objects in chronological order with respect to performanceEntry.startTime
		whose performanceEntry.entryType is equal to type.
	**/
	function getEntriesByType(type:String):Array<PerformanceEntry>;
	/**
		Creates a new PerformanceMark entry in the Performance Timeline.
		A PerformanceMark is a subclass of PerformanceEntry whose performanceEntry.entryType is always 'mark',
		and whose performanceEntry.duration is always 0.
		Performance marks are used to mark specific significant moments in the Performance Timeline.
	**/
	function mark(?name:String):Void;
	/**
		Creates a new PerformanceMeasure entry in the Performance Timeline.
		A PerformanceMeasure is a subclass of PerformanceEntry whose performanceEntry.entryType is always 'measure',
		and whose performanceEntry.duration measures the number of milliseconds elapsed since startMark and endMark.
		
		The startMark argument may identify any existing PerformanceMark in the the Performance Timeline, or may identify
		any of the timestamp properties provided by the PerformanceNodeTiming class. If the named startMark does not exist,
		then startMark is set to timeOrigin by default.
		
		The endMark argument must identify any existing PerformanceMark in the the Performance Timeline or any of the timestamp
		properties provided by the PerformanceNodeTiming class. If the named endMark does not exist, an error will be thrown.
	**/
	function measure(name:String, startMark:String, endMark:String):Void;
	/**
		An instance of the PerformanceNodeTiming class that provides performance metrics for specific Node.js operational milestones.
	**/
	final nodeTiming : PerformanceNodeTiming;
	function now():Float;
	/**
		The timeOrigin specifies the high resolution millisecond timestamp from which all performance metric durations are measured.
	**/
	final timeOrigin : Float;
	/**
		Wraps a function within a new function that measures the running time of the wrapped function.
		A PerformanceObserver must be subscribed to the 'function' event type in order for the timing details to be accessed.
	**/
	function timerify<T>(fn:T):T;
};