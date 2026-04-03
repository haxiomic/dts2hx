package node.timers.promises;

typedef Scheduler = {
	/**
		An experimental API defined by the [Scheduling APIs](https://github.com/WICG/scheduling-apis) draft specification
		being developed as a standard Web Platform API.
		
		Calling `timersPromises.scheduler.wait(delay, options)` is roughly equivalent
		to calling `timersPromises.setTimeout(delay, undefined, options)` except that
		the `ref` option is not supported.
		
		```js
		import { scheduler } from 'node:timers/promises';
		
		await scheduler.wait(1000); // Wait one second before continuing
		```
	**/
	function wait(delay:Float, ?options:{ @:optional var signal : js.html.AbortSignal; }):js.lib.Promise<ts.Undefined>;
	/**
		An experimental API defined by the [Scheduling APIs](https://github.com/WICG/scheduling-apis) draft specification
		being developed as a standard Web Platform API.
		
		Calling `timersPromises.scheduler.yield()` is equivalent to calling
		`timersPromises.setImmediate()` with no arguments.
	**/
	function yield():js.lib.Promise<ts.Undefined>;
};