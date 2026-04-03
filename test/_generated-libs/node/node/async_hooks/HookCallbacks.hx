package node.async_hooks;

typedef HookCallbacks = {
	/**
		Called when a class is constructed that has the possibility to emit an asynchronous event.
	**/
	@:optional
	function init(asyncId:Float, type:String, triggerAsyncId:Float, resource:Dynamic):Void;
	/**
		When an asynchronous operation is initiated or completes a callback is called to notify the user.
		The before callback is called just before said callback is executed.
	**/
	@:optional
	function before(asyncId:Float):Void;
	/**
		Called immediately after the callback specified in `before` is completed.
		
		If an uncaught exception occurs during execution of the callback, then `after` will run after the `'uncaughtException'` event is emitted or a `domain`'s handler runs.
	**/
	@:optional
	function after(asyncId:Float):Void;
	/**
		Called when a promise has resolve() called. This may not be in the same execution id
		as the promise itself.
	**/
	@:optional
	function promiseResolve(asyncId:Float):Void;
	/**
		Called after the resource corresponding to asyncId is destroyed
	**/
	@:optional
	function destroy(asyncId:Float):Void;
};