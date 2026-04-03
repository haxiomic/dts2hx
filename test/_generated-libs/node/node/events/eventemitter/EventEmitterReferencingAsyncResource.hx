package node.events.eventemitter;

typedef EventEmitterReferencingAsyncResource = {
	final eventEmitter : EventEmitterAsyncResource;
	/**
		Binds the given function to execute to this `AsyncResource`'s scope.
	**/
	function bind<Func:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(fn:Func):Func;
	/**
		Call the provided function with the provided arguments in the execution context
		of the async resource. This will establish the context, trigger the AsyncHooks
		before callbacks, call the function, trigger the AsyncHooks after callbacks, and
		then restore the original execution context.
	**/
	function runInAsyncScope<This, Result>(fn:(args:haxe.extern.Rest<Dynamic>) -> Result, ?thisArg:This, args:haxe.extern.Rest<Dynamic>):Result;
	/**
		Call all `destroy` hooks. This should only ever be called once. An error will
		be thrown if it is called more than once. This **must** be manually called. If
		the resource is left to be collected by the GC then the `destroy` hooks will
		never be called.
	**/
	function emitDestroy():EventEmitterReferencingAsyncResource;
	function asyncId():Float;
	function triggerAsyncId():Float;
};