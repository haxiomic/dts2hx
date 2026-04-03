package node.timers;

@:jsRequire("timers", "promises") @valueModuleOnly extern class Promises {
	/**
		```js
		import {
		  setTimeout,
		} from 'node:timers/promises';
		
		const res = await setTimeout(100, 'result');
		
		console.log(res);  // Prints 'result'
		```
	**/
	static function setTimeout<T>(?delay:Float, ?value:T, ?options:TimerOptions):js.lib.Promise<T>;
	/**
		```js
		import {
		  setImmediate,
		} from 'node:timers/promises';
		
		const res = await setImmediate('result');
		
		console.log(res);  // Prints 'result'
		```
	**/
	static function setImmediate<T>(?value:T, ?options:TimerOptions):js.lib.Promise<T>;
	/**
		Returns an async iterator that generates values in an interval of `delay` ms.
		If `ref` is `true`, you need to call `next()` of async iterator explicitly
		or implicitly to keep the event loop alive.
		
		```js
		import {
		  setInterval,
		} from 'node:timers/promises';
		
		const interval = 100;
		for await (const startTime of setInterval(interval, Date.now())) {
		  const now = Date.now();
		  console.log(now);
		  if ((now - startTime) > 1000)
		    break;
		}
		console.log(Date.now());
		```
	**/
	static function setInterval<T>(?delay:Float, ?value:T, ?options:TimerOptions):global.nodejs.AsyncIterator<T, Dynamic, Dynamic>;
	static final scheduler : node.timers.promises.Scheduler;
}