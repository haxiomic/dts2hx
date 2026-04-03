package node.v8;

/**
	Key events in the lifetime of a promise have been categorized into four areas: creation of a promise, before/after a continuation handler is called or
	around an await, and when the promise resolves or rejects.
	
	Because promises are asynchronous resources whose lifecycle is tracked via the promise hooks mechanism, the `init()`, `before()`, `after()`, and
	`settled()` callbacks must not be async functions as they create more promises which would produce an infinite loop.
**/
typedef HookCallbacks = {
	@:optional
	dynamic function init(promise:js.lib.Promise<Any>, parent:js.lib.Promise<Any>):Void;
	@:optional
	dynamic function before(promise:js.lib.Promise<Any>):Void;
	@:optional
	dynamic function after(promise:js.lib.Promise<Any>):Void;
	@:optional
	dynamic function settled(promise:js.lib.Promise<Any>):Void;
};