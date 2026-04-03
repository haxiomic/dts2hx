package node;

@:jsRequire("node:timers") @valueModuleOnly extern class NodeTimers {
	/**
		Cancels an `Immediate` object created by `setImmediate()`.
	**/
	static function clearImmediate(immediate:Null<global.nodejs.Immediate>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/clearInterval)
		
		Cancels a `Timeout` object created by `setInterval()`.
	**/
	@:overload(function(timeout:Null<ts.AnyOf3<String, Float, global.nodejs.Timeout>>):Void { })
	static function clearInterval(id:Null<Float>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/clearTimeout)
		
		Cancels a `Timeout` object created by `setTimeout()`.
	**/
	@:overload(function(timeout:Null<ts.AnyOf3<String, Float, global.nodejs.Timeout>>):Void { })
	static function clearTimeout(id:Null<Float>):Void;
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
	static function setImmediate<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, args:haxe.extern.Rest<Any>):global.nodejs.Immediate;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
		
		Schedules repeated execution of `callback` every `delay` milliseconds.
		
		When `delay` is larger than `2147483647` or less than `1`, the `delay` will be
		set to `1`. Non-integer delays are truncated to an integer.
		
		If `callback` is not a function, a `TypeError` will be thrown.
		
		This method has a custom variant for promises that is available using
		`timersPromises.setInterval()`.
	**/
	@:overload(function<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?delay:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout { })
	@:overload(function(callback:(_:ts.Undefined) -> Void, ?delay:Float):global.nodejs.Timeout { })
	static function setInterval(handler:js.html.TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
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
	@:overload(function<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?delay:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout { })
	@:overload(function(callback:(_:ts.Undefined) -> Void, ?delay:Float):global.nodejs.Timeout { })
	static function setTimeout(handler:js.html.TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
}