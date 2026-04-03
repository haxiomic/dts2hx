package js.html;

/**
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
	
	Schedules execution of a one-time `callback` after `delay` milliseconds.
	
	The `callback` will likely not be invoked in precisely `delay` milliseconds.
	Node.js makes no guarantees about the exact timing of when callbacks will fire,
	nor of their ordering. The callback will be called as close as possible to the
	time specified.
	
	When `delay` is larger than `2147483647` or less than `1` or `NaN`, the `delay`
	will be set to `1`. Non-integer delays are truncated to an integer.
	
	If `callback` is not a function, a `TypeError` will be thrown.
	
	This method has a custom variant for promises that is available using
	`timersPromises.setTimeout()`.
**/
@:native("setTimeout") @valueModuleOnly extern class SetTimeout {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
	**/
	@:overload(function<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?delay:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout { })
	@:overload(function(callback:(_:ts.Undefined) -> Void, ?delay:Float):global.nodejs.Timeout { })
	@:selfCall
	static function call(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	/**
		```js
		import {
		  setTimeout,
		} from 'node:timers/promises';
		
		const res = await setTimeout(100, 'result');
		
		console.log(res);  // Prints 'result'
		```
	**/
	static function __promisify__<T>(?delay:Float, ?value:T, ?options:node.timers.TimerOptions):js.lib.Promise<T>;
}