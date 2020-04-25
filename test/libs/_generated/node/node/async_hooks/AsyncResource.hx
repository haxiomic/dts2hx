package node.async_hooks;
/**
	The class AsyncResource was designed to be extended by the embedder's async resources.
	Using this users can easily trigger the lifetime events of their own resources.
**/
@:jsRequire("async_hooks", "AsyncResource") extern class AsyncResource {
	function new(type:String, ?triggerAsyncId:haxe.extern.EitherType<Float, AsyncResourceOptions>);
	/**
		Call AsyncHooks before callbacks.
	**/
	function emitBefore():Void;
	/**
		Call AsyncHooks after callbacks.
	**/
	function emitAfter():Void;
	/**
		Call the provided function with the provided arguments in the
		execution context of the async resource. This will establish the
		context, trigger the AsyncHooks before callbacks, call the function,
		trigger the AsyncHooks after callbacks, and then restore the original
		execution context.
	**/
	function runInAsyncScope<This, Result>(fn:(args:std.Array<Any>) -> Result, ?thisArg:This, args:std.Array<Any>):Result;
	/**
		Call AsyncHooks destroy callbacks.
	**/
	function emitDestroy():Void;
	function asyncId():Float;
	function triggerAsyncId():Float;
}