package node.perf_hooks;

/**
	_This property is an extension by Node.js. It is not available in Web browsers._
	
	Provides timing details for Node.js itself. The constructor of this class
	is not exposed to users.
**/
@:jsRequire("perf_hooks", "PerformanceNodeTiming") extern class PerformanceNodeTiming extends PerformanceEntry {
	/**
		The high resolution millisecond timestamp at which the Node.js process
		completed bootstrapping. If bootstrapping has not yet finished, the property
		has the value of -1.
	**/
	final bootstrapComplete : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js environment was
		initialized.
	**/
	final environment : Float;
	/**
		The high resolution millisecond timestamp of the amount of time the event loop
		has been idle within the event loop's event provider (e.g. `epoll_wait`). This
		does not take CPU usage into consideration. If the event loop has not yet
		started (e.g., in the first tick of the main script), the property has the
		value of 0.
	**/
	final idleTime : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js event loop
		exited. If the event loop has not yet exited, the property has the value of -1\.
		It can only have a value of not -1 in a handler of the `'exit'` event.
	**/
	final loopExit : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js event loop
		started. If the event loop has not yet started (e.g., in the first tick of the
		main script), the property has the value of -1.
	**/
	final loopStart : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js process was initialized.
	**/
	final nodeStart : Float;
	/**
		This is a wrapper to the `uv_metrics_info` function.
		It returns the current set of event loop metrics.
		
		It is recommended to use this property inside a function whose execution was
		scheduled using `setImmediate` to avoid collecting metrics before finishing all
		operations scheduled during the current loop iteration.
	**/
	final uvMetricsInfo : UVMetrics;
	/**
		The high resolution millisecond timestamp at which the V8 platform was
		initialized.
	**/
	final v8Start : Float;
	static var prototype : PerformanceNodeTiming;
}