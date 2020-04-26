package node.perf_hooks;
@:jsRequire("perf_hooks", "PerformanceObserver") extern class PerformanceObserver extends node.async_hooks.AsyncResource {
	function new(callback:(list:PerformanceObserverEntryList, observer:PerformanceObserver) -> Void);
	/**
		Disconnects the PerformanceObserver instance from all notifications.
	**/
	function disconnect():Void;
	/**
		Subscribes the PerformanceObserver instance to notifications of new PerformanceEntry instances identified by options.entryTypes.
		When options.buffered is false, the callback will be invoked once for every PerformanceEntry instance.
		Property buffered defaults to false.
	**/
	function observe(options:{ var entryTypes : std.Array<String>; @:optional
	var buffered : Bool; }):Void;
}