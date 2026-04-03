package node.async_hooks;

/**
	The class `AsyncResource` is designed to be extended by the embedder's async
	resources. Using this, users can easily trigger the lifetime events of their
	own resources.
	
	The `init` hook will trigger when an `AsyncResource` is instantiated.
	
	The following is an overview of the `AsyncResource` API.
	
	```js
	import { AsyncResource, executionAsyncId } from 'node:async_hooks';
	
	// AsyncResource() is meant to be extended. Instantiating a
	// new AsyncResource() also triggers init. If triggerAsyncId is omitted then
	// async_hook.executionAsyncId() is used.
	const asyncResource = new AsyncResource(
	  type, { triggerAsyncId: executionAsyncId(), requireManualDestroy: false },
	);
	
	// Run a function in the execution context of the resource. This will
	// * establish the context of the resource
	// * trigger the AsyncHooks before callbacks
	// * call the provided function `fn` with the supplied arguments
	// * trigger the AsyncHooks after callbacks
	// * restore the original execution context
	asyncResource.runInAsyncScope(fn, thisArg, ...args);
	
	// Call AsyncHooks destroy callbacks.
	asyncResource.emitDestroy();
	
	// Return the unique ID assigned to the AsyncResource instance.
	asyncResource.asyncId();
	
	// Return the trigger ID for the AsyncResource instance.
	asyncResource.triggerAsyncId();
	```
**/
@:jsRequire("async_hooks", "AsyncResource") extern class AsyncResource {
	/**
		AsyncResource() is meant to be extended. Instantiating a
		new AsyncResource() also triggers init. If triggerAsyncId is omitted then
		async_hook.executionAsyncId() is used.
	**/
	function new(type:String, ?triggerAsyncId:ts.AnyOf2<Float, AsyncResourceOptions>);
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
	function emitDestroy():AsyncResource;
	function asyncId():Float;
	function triggerAsyncId():Float;
	static var prototype : AsyncResource;
	/**
		Binds the given function to the current execution context.
	**/
	@:native("bind")
	static function bind_<Func:((args:haxe.extern.Rest<Dynamic>) -> Dynamic), ThisArg>(fn:Func, ?type:String, ?thisArg:ThisArg):Func;
}