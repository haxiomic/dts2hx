package node.timers;

/**
	Schedules the "immediate" execution of the `callback` after I/O events'
	callbacks.
	
	When multiple calls to `setImmediate()` are made, the `callback` functions are
	queued for execution in the order in which they are created. The entire callback
	queue is processed every event loop iteration. If an immediate timer is queued
	from inside an executing callback, that timer will not be triggered until the
	next event loop iteration.
	
	If `callback` is not a function, a `TypeError` will be thrown.
	
	This method has a custom variant for promises that is available using
	`timersPromises.setImmediate()`.
**/
@:jsRequire("timers", "setImmediate") @valueModuleOnly extern class SetImmediate {
	/**
		Schedules the "immediate" execution of the `callback` after I/O events'
		callbacks.
		
		When multiple calls to `setImmediate()` are made, the `callback` functions are
		queued for execution in the order in which they are created. The entire callback
		queue is processed every event loop iteration. If an immediate timer is queued
		from inside an executing callback, that timer will not be triggered until the
		next event loop iteration.
		
		If `callback` is not a function, a `TypeError` will be thrown.
		
		This method has a custom variant for promises that is available using
		`timersPromises.setImmediate()`.
	**/
	@:overload(function(callback:(_:ts.Undefined) -> Void):global.nodejs.Immediate { })
	@:selfCall
	static function call<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, args:haxe.extern.Rest<Any>):global.nodejs.Immediate;
	/**
		```js
		import {
		  setImmediate,
		} from 'node:timers/promises';
		
		const res = await setImmediate('result');
		
		console.log(res);  // Prints 'result'
		```
	**/
	static function __promisify__<T>(?value:T, ?options:TimerOptions):js.lib.Promise<T>;
}