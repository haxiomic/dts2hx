package node.v8;

typedef PromiseHooks = {
	/**
		The `init` hook must be a plain function. Providing an async function will throw as it would produce an infinite microtask loop.
	**/
	dynamic function onInit(init:Init):haxe.Constraints.Function;
	/**
		The `settled` hook must be a plain function. Providing an async function will throw as it would produce an infinite microtask loop.
	**/
	dynamic function onSettled(settled:Settled):haxe.Constraints.Function;
	/**
		The `before` hook must be a plain function. Providing an async function will throw as it would produce an infinite microtask loop.
	**/
	dynamic function onBefore(before:Before):haxe.Constraints.Function;
	/**
		The `after` hook must be a plain function. Providing an async function will throw as it would produce an infinite microtask loop.
	**/
	dynamic function onAfter(after:After):haxe.Constraints.Function;
	/**
		Registers functions to be called for different lifetime events of each promise.
		The callbacks `init()`/`before()`/`after()`/`settled()` are called for the respective events during a promise's lifetime.
		All callbacks are optional. For example, if only promise creation needs to be tracked, then only the init callback needs to be passed.
		The hook callbacks must be plain functions. Providing async functions will throw as it would produce an infinite microtask loop.
	**/
	dynamic function createHook(callbacks:HookCallbacks):haxe.Constraints.Function;
};