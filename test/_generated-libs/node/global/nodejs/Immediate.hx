package global.nodejs;

/**
	This object is created internally and is returned from `setImmediate()`. It
	can be passed to `clearImmediate()` in order to cancel the scheduled
	actions.
	
	By default, when an immediate is scheduled, the Node.js event loop will continue
	running as long as the immediate is active. The `Immediate` object returned by
	`setImmediate()` exports both `immediate.ref()` and `immediate.unref()`
	functions that can be used to control this default behavior.
**/
typedef Immediate = {
	/**
		If true, the `Immediate` object will keep the Node.js event loop active.
	**/
	function hasRef():Bool;
	/**
		When called, requests that the Node.js event loop _not_ exit so long as the
		`Immediate` is active. Calling `immediate.ref()` multiple times will have no
		effect.
		
		By default, all `Immediate` objects are "ref'ed", making it normally unnecessary
		to call `immediate.ref()` unless `immediate.unref()` had been called previously.
	**/
	function ref():Immediate;
	/**
		When called, the active `Immediate` object will not require the Node.js event
		loop to remain active. If there is no other activity keeping the event loop
		running, the process may exit before the `Immediate` object's callback is
		invoked. Calling `immediate.unref()` multiple times will have no effect.
	**/
	function unref():Immediate;
	function _onImmediate(args:haxe.extern.Rest<Dynamic>):Void;
};