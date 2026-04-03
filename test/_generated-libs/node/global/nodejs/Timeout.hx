package global.nodejs;

/**
	This object is created internally and is returned from `setTimeout()` and
	`setInterval()`. It can be passed to either `clearTimeout()` or
	`clearInterval()` in order to cancel the scheduled actions.
	
	By default, when a timer is scheduled using either `setTimeout()` or
	`setInterval()`, the Node.js event loop will continue running as long as the
	timer is active. Each of the `Timeout` objects returned by these functions
	export both `timeout.ref()` and `timeout.unref()` functions that can be used to
	control this default behavior.
**/
typedef Timeout = {
	/**
		Cancels the timeout.
	**/
	function close():Timeout;
	/**
		If true, the `Timeout` object will keep the Node.js event loop active.
	**/
	function hasRef():Bool;
	/**
		When called, requests that the Node.js event loop _not_ exit so long as the
		`Timeout` is active. Calling `timeout.ref()` multiple times will have no effect.
		
		By default, all `Timeout` objects are "ref'ed", making it normally unnecessary
		to call `timeout.ref()` unless `timeout.unref()` had been called previously.
	**/
	function ref():Timeout;
	/**
		Sets the timer's start time to the current time, and reschedules the timer to
		call its callback at the previously specified duration adjusted to the current
		time. This is useful for refreshing a timer without allocating a new
		JavaScript object.
		
		Using this on a timer that has already called its callback will reactivate the
		timer.
	**/
	function refresh():Timeout;
	/**
		When called, the active `Timeout` object will not require the Node.js event loop
		to remain active. If there is no other activity keeping the event loop running,
		the process may exit before the `Timeout` object's callback is invoked. Calling
		`timeout.unref()` multiple times will have no effect.
	**/
	function unref():Timeout;
	function _onTimeout(args:haxe.extern.Rest<Dynamic>):Void;
};