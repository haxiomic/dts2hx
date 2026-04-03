package node.perf_hooks;

typedef Performance = {
	/**
		If `name` is not provided, removes all `PerformanceMark` objects from the Performance Timeline.
		If `name` is provided, removes only the named mark.
	**/
	function clearMarks(?name:String):Void;
	/**
		If `name` is not provided, removes all `PerformanceMeasure` objects from the Performance Timeline.
		If `name` is provided, removes only the named measure.
	**/
	function clearMeasures(?name:String):Void;
	/**
		If `name` is not provided, removes all `PerformanceResourceTiming` objects from the Resource Timeline.
		If `name` is provided, removes only the named resource.
	**/
	function clearResourceTimings(?name:String):Void;
	/**
		eventLoopUtilization is similar to CPU utilization except that it is calculated using high precision wall-clock time.
		It represents the percentage of time the event loop has spent outside the event loop's event provider (e.g. epoll_wait).
		No other CPU idle time is taken into consideration.
	**/
	dynamic function eventLoopUtilization(?utilization1:EventLoopUtilization, ?utilization2:EventLoopUtilization):EventLoopUtilization;
	/**
		Returns a list of `PerformanceEntry` objects in chronological order with respect to `performanceEntry.startTime`.
		If you are only interested in performance entries of certain types or that have certain names, see
		`performance.getEntriesByType()` and `performance.getEntriesByName()`.
	**/
	function getEntries():Array<PerformanceEntry>;
	/**
		Returns a list of `PerformanceEntry` objects in chronological order with respect to `performanceEntry.startTime`
		whose `performanceEntry.name` is equal to `name`, and optionally, whose `performanceEntry.entryType` is equal to `type`.
	**/
	function getEntriesByName(name:String, ?type:EntryType):Array<PerformanceEntry>;
	/**
		Returns a list of `PerformanceEntry` objects in chronological order with respect to `performanceEntry.startTime`
		whose `performanceEntry.entryType` is equal to `type`.
	**/
	function getEntriesByType(type:EntryType):Array<PerformanceEntry>;
	/**
		Creates a new `PerformanceMark` entry in the Performance Timeline.
		A `PerformanceMark` is a subclass of `PerformanceEntry` whose `performanceEntry.entryType` is always `'mark'`,
		and whose `performanceEntry.duration` is always `0`.
		Performance marks are used to mark specific significant moments in the Performance Timeline.
		
		The created `PerformanceMark` entry is put in the global Performance Timeline and can be queried with
		`performance.getEntries`, `performance.getEntriesByName`, and `performance.getEntriesByType`. When the observation is
		performed, the entries should be cleared from the global Performance Timeline manually with `performance.clearMarks`.
	**/
	function mark(name:String, ?options:MarkOptions):PerformanceMark;
	/**
		Creates a new `PerformanceResourceTiming` entry in the Resource Timeline.
		A `PerformanceResourceTiming` is a subclass of `PerformanceEntry` whose `performanceEntry.entryType` is always `'resource'`.
		Performance resources are used to mark moments in the Resource Timeline.
	**/
	function markResourceTiming(timingInfo:Dynamic, requestedUrl:String, initiatorType:String, global:Dynamic, cacheMode:String):PerformanceResourceTiming;
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
	@:overload(function(name:String, options:MeasureOptions):PerformanceMeasure { })
	function measure(name:String, ?startMark:String, ?endMark:String):PerformanceMeasure;
	/**
		_This property is an extension by Node.js. It is not available in Web browsers._
		
		An instance of the `PerformanceNodeTiming` class that provides performance metrics for specific Node.js operational milestones.
	**/
	final nodeTiming : PerformanceNodeTiming;
	/**
		Returns the current high resolution millisecond timestamp, where 0 represents the start of the current `node` process.
	**/
	function now():Float;
	/**
		Sets the global performance resource timing buffer size to the specified number of "resource" type performance entry objects.
		
		By default the max buffer size is set to 250.
	**/
	function setResourceTimingBufferSize(maxSize:Float):Void;
	/**
		The [`timeOrigin`](https://w3c.github.io/hr-time/#dom-performance-timeorigin) specifies the high resolution millisecond timestamp
		at which the current `node` process began, measured in Unix time.
	**/
	final timeOrigin : Float;
	/**
		_This property is an extension by Node.js. It is not available in Web browsers._
		
		Wraps a function within a new function that measures the running time of the wrapped function.
		A `PerformanceObserver` must be subscribed to the `'function'` event type in order for the timing details to be accessed.
		
		```js
		import {
		  performance,
		  PerformanceObserver,
		} from 'node:perf_hooks';
		
		function someFunction() {
		  console.log('hello world');
		}
		
		const wrapped = performance.timerify(someFunction);
		
		const obs = new PerformanceObserver((list) => {
		  console.log(list.getEntries()[0].duration);
		
		  performance.clearMarks();
		  performance.clearMeasures();
		  obs.disconnect();
		});
		obs.observe({ entryTypes: ['function'] });
		
		// A performance timeline entry will be created
		wrapped();
		```
		
		If the wrapped function returns a promise, a finally handler will be attached to the promise and the duration will be reported
		once the finally handler is invoked.
	**/
	function timerify<T:((params:haxe.extern.Rest<Dynamic>) -> Dynamic)>(fn:T, ?options:TimerifyOptions):T;
	/**
		An object which is JSON representation of the performance object. It is similar to
		[`window.performance.toJSON`](https://developer.mozilla.org/en-US/docs/Web/API/Performance/toJSON) in browsers.
	**/
	function toJSON():Dynamic;
};