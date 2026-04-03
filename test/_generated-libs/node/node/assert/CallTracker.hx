package node.assert;

/**
	This feature is deprecated and will be removed in a future version.
	Please consider using alternatives such as the `mock` helper function.
**/
@:jsRequire("assert", "CallTracker") extern class CallTracker {
	function new();
	/**
		The wrapper function is expected to be called exactly `exact` times. If the
		function has not been called exactly `exact` times when `tracker.verify()` is called, then `tracker.verify()` will throw an
		error.
		
		```js
		import assert from 'node:assert';
		
		// Creates call tracker.
		const tracker = new assert.CallTracker();
		
		function func() {}
		
		// Returns a function that wraps func() that must be called exact times
		// before tracker.verify().
		const callsfunc = tracker.calls(func);
		```
	**/
	@:overload(function(fn:Null<Any>, ?exact:Float):() -> Void { })
	@:overload(function<Func:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(fn:Func, ?exact:Float):Func { })
	@:overload(function<Func:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(?fn:Func, ?exact:Float):ts.AnyOf2<Func, () -> Void> { })
	function calls(?exact:Float):() -> Void;
	/**
		Example:
		
		```js
		import assert from 'node:assert';
		
		const tracker = new assert.CallTracker();
		
		function func() {}
		const callsfunc = tracker.calls(func);
		callsfunc(1, 2, 3);
		
		assert.deepStrictEqual(tracker.getCalls(callsfunc),
		                       [{ thisArg: undefined, arguments: [1, 2, 3] }]);
		```
	**/
	function getCalls(fn:haxe.Constraints.Function):Array<CallTrackerCall>;
	/**
		The arrays contains information about the expected and actual number of calls of
		the functions that have not been called the expected number of times.
		
		```js
		import assert from 'node:assert';
		
		// Creates call tracker.
		const tracker = new assert.CallTracker();
		
		function func() {}
		
		// Returns a function that wraps func() that must be called exact times
		// before tracker.verify().
		const callsfunc = tracker.calls(func, 2);
		
		// Returns an array containing information on callsfunc()
		console.log(tracker.report());
		// [
		//  {
		//    message: 'Expected the func function to be executed 2 time(s) but was
		//    executed 0 time(s).',
		//    actual: 0,
		//    expected: 2,
		//    operator: 'func',
		//    stack: stack trace
		//  }
		// ]
		```
	**/
	function report():Array<CallTrackerReportInformation>;
	/**
		Reset calls of the call tracker. If a tracked function is passed as an argument, the calls will be reset for it.
		If no arguments are passed, all tracked functions will be reset.
		
		```js
		import assert from 'node:assert';
		
		const tracker = new assert.CallTracker();
		
		function func() {}
		const callsfunc = tracker.calls(func);
		
		callsfunc();
		// Tracker was called once
		assert.strictEqual(tracker.getCalls(callsfunc).length, 1);
		
		tracker.reset(callsfunc);
		assert.strictEqual(tracker.getCalls(callsfunc).length, 0);
		```
	**/
	function reset(?fn:haxe.Constraints.Function):Void;
	/**
		Iterates through the list of functions passed to
		{@link
		tracker.calls()
		}
		and will throw an error for functions that
		have not been called the expected number of times.
		
		```js
		import assert from 'node:assert';
		
		// Creates call tracker.
		const tracker = new assert.CallTracker();
		
		function func() {}
		
		// Returns a function that wraps func() that must be called exact times
		// before tracker.verify().
		const callsfunc = tracker.calls(func, 2);
		
		callsfunc();
		
		// Will throw an error since callsfunc() was only called once.
		tracker.verify();
		```
	**/
	function verify():Void;
	static var prototype : CallTracker;
}