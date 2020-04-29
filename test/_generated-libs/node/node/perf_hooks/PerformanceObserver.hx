package node.perf_hooks;
@:jsRequire("perf_hooks", "PerformanceObserver") extern class PerformanceObserver {
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
	function observe(options:{ var entryTypes : std.Array<String>; @:optional var buffered : Bool; }):Void;
	/**
		Call AsyncHooks before callbacks.
	**/
	function emitBefore():Void;
	/**
		Call AsyncHooks after callbacks.
	**/
	function emitAfter():Void;
	/**
		Call the provided function with the provided arguments in the
		execution context of the async resource. This will establish the
		context, trigger the AsyncHooks before callbacks, call the function,
		trigger the AsyncHooks after callbacks, and then restore the original
		execution context.
	**/
	function runInAsyncScope<This, Result>(fn:(args:std.Array<Any>) -> Result, ?thisArg:This, args:std.Array<Any>):Result;
	/**
		Call AsyncHooks destroy callbacks.
	**/
	function emitDestroy():Void;
	function asyncId():Float;
	function triggerAsyncId():Float;
}