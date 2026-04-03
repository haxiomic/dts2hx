package node.perf_hooks;

@:jsRequire("perf_hooks", "PerformanceObserver") extern class PerformanceObserver extends node.async_hooks.AsyncResource {
	function new(callback:PerformanceObserverCallback);
	/**
		Disconnects the `PerformanceObserver` instance from all notifications.
	**/
	function disconnect():Void;
	/**
		Subscribes the `PerformanceObserver` instance to notifications of new `PerformanceEntry` instances identified either by `options.entryTypes` or `options.type`:
		
		```js
		import {
		  performance,
		  PerformanceObserver,
		} from 'node:perf_hooks';
		
		const obs = new PerformanceObserver((list, observer) => {
		  // Called once asynchronously. `list` contains three items.
		});
		obs.observe({ type: 'mark' });
		
		for (let n = 0; n < 3; n++)
		  performance.mark(`test${n}`);
		```
	**/
	function observe(options:ts.AnyOf2<{ var entryTypes : haxe.ds.ReadOnlyArray<EntryType>; @:optional var buffered : Bool; }, { var type : EntryType; @:optional var buffered : Bool; }>):Void;
	function takeRecords():Array<PerformanceEntry>;
	/**
		Call all `destroy` hooks. This should only ever be called once. An error will
		be thrown if it is called more than once. This **must** be manually called. If
		the resource is left to be collected by the GC then the `destroy` hooks will
		never be called.
	**/
	function emitDestroy():PerformanceObserver;
	static var prototype : PerformanceObserver;
}