package node.async_hooks;

/**
	This class creates stores that stay coherent through asynchronous operations.
	
	While you can create your own implementation on top of the `node:async_hooks` module, `AsyncLocalStorage` should be preferred as it is a performant and memory
	safe implementation that involves significant optimizations that are non-obvious
	to implement.
	
	The following example uses `AsyncLocalStorage` to build a simple logger
	that assigns IDs to incoming HTTP requests and includes them in messages
	logged within each request.
	
	```js
	import http from 'node:http';
	import { AsyncLocalStorage } from 'node:async_hooks';
	
	const asyncLocalStorage = new AsyncLocalStorage();
	
	function logWithId(msg) {
	  const id = asyncLocalStorage.getStore();
	  console.log(`${id !== undefined ? id : '-'}:`, msg);
	}
	
	let idSeq = 0;
	http.createServer((req, res) => {
	  asyncLocalStorage.run(idSeq++, () => {
	    logWithId('start');
	    // Imagine any chain of async operations here
	    setImmediate(() => {
	      logWithId('finish');
	      res.end();
	    });
	  });
	}).listen(8080);
	
	http.get('http://localhost:8080');
	http.get('http://localhost:8080');
	// Prints:
	//   0: start
	//   1: start
	//   0: finish
	//   1: finish
	```
	
	Each instance of `AsyncLocalStorage` maintains an independent storage context.
	Multiple instances can safely exist simultaneously without risk of interfering
	with each other's data.
**/
@:jsRequire("async_hooks", "AsyncLocalStorage") extern class AsyncLocalStorage<T> {
	function new();
	/**
		Disables the instance of `AsyncLocalStorage`. All subsequent calls
		to `asyncLocalStorage.getStore()` will return `undefined` until `asyncLocalStorage.run()` or `asyncLocalStorage.enterWith()` is called again.
		
		When calling `asyncLocalStorage.disable()`, all current contexts linked to the
		instance will be exited.
		
		Calling `asyncLocalStorage.disable()` is required before the `asyncLocalStorage` can be garbage collected. This does not apply to stores
		provided by the `asyncLocalStorage`, as those objects are garbage collected
		along with the corresponding async resources.
		
		Use this method when the `asyncLocalStorage` is not in use anymore
		in the current process.
	**/
	function disable():Void;
	/**
		Returns the current store.
		If called outside of an asynchronous context initialized by
		calling `asyncLocalStorage.run()` or `asyncLocalStorage.enterWith()`, it
		returns `undefined`.
	**/
	function getStore():Null<T>;
	/**
		Runs a function synchronously within a context and returns its
		return value. The store is not accessible outside of the callback function.
		The store is accessible to any asynchronous operations created within the
		callback.
		
		The optional `args` are passed to the callback function.
		
		If the callback function throws an error, the error is thrown by `run()` too.
		The stacktrace is not impacted by this call and the context is exited.
		
		Example:
		
		```js
		const store = { id: 2 };
		try {
		  asyncLocalStorage.run(store, () => {
		    asyncLocalStorage.getStore(); // Returns the store object
		    setTimeout(() => {
		      asyncLocalStorage.getStore(); // Returns the store object
		    }, 200);
		    throw new Error();
		  });
		} catch (e) {
		  asyncLocalStorage.getStore(); // Returns undefined
		  // The error will be caught here
		}
		```
	**/
	@:overload(function<R, TArgs:(Array<Dynamic>)>(store:T, callback:(args:haxe.extern.Rest<Any>) -> R, args:haxe.extern.Rest<Any>):R { })
	function run<R>(store:T, callback:() -> R):R;
	/**
		Runs a function synchronously outside of a context and returns its
		return value. The store is not accessible within the callback function or
		the asynchronous operations created within the callback. Any `getStore()` call done within the callback function will always return `undefined`.
		
		The optional `args` are passed to the callback function.
		
		If the callback function throws an error, the error is thrown by `exit()` too.
		The stacktrace is not impacted by this call and the context is re-entered.
		
		Example:
		
		```js
		// Within a call to run
		try {
		  asyncLocalStorage.getStore(); // Returns the store object or value
		  asyncLocalStorage.exit(() => {
		    asyncLocalStorage.getStore(); // Returns undefined
		    throw new Error();
		  });
		} catch (e) {
		  asyncLocalStorage.getStore(); // Returns the same object or value
		  // The error will be caught here
		}
		```
	**/
	function exit<R, TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> R, args:haxe.extern.Rest<Any>):R;
	/**
		Transitions into the context for the remainder of the current
		synchronous execution and then persists the store through any following
		asynchronous calls.
		
		Example:
		
		```js
		const store = { id: 1 };
		// Replaces previous store with the given store object
		asyncLocalStorage.enterWith(store);
		asyncLocalStorage.getStore(); // Returns the store object
		someAsyncOperation(() => {
		  asyncLocalStorage.getStore(); // Returns the same object
		});
		```
		
		This transition will continue for the _entire_ synchronous execution.
		This means that if, for example, the context is entered within an event
		handler subsequent event handlers will also run within that context unless
		specifically bound to another context with an `AsyncResource`. That is why `run()` should be preferred over `enterWith()` unless there are strong reasons
		to use the latter method.
		
		```js
		const store = { id: 1 };
		
		emitter.on('my-event', () => {
		  asyncLocalStorage.enterWith(store);
		});
		emitter.on('my-event', () => {
		  asyncLocalStorage.getStore(); // Returns the same object
		});
		
		asyncLocalStorage.getStore(); // Returns undefined
		emitter.emit('my-event');
		asyncLocalStorage.getStore(); // Returns the same object
		```
	**/
	function enterWith(store:T):Void;
	static var prototype : AsyncLocalStorage<Dynamic>;
	/**
		Binds the given function to the current execution context.
	**/
	static function bind<Func:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(fn:Func):Func;
	/**
		Captures the current execution context and returns a function that accepts a
		function as an argument. Whenever the returned function is called, it
		calls the function passed to it within the captured context.
		
		```js
		const asyncLocalStorage = new AsyncLocalStorage();
		const runInAsyncScope = asyncLocalStorage.run(123, () => AsyncLocalStorage.snapshot());
		const result = asyncLocalStorage.run(321, () => runInAsyncScope(() => asyncLocalStorage.getStore()));
		console.log(result);  // returns 123
		```
		
		AsyncLocalStorage.snapshot() can replace the use of AsyncResource for simple
		async context tracking purposes, for example:
		
		```js
		class Foo {
		  #runInAsyncScope = AsyncLocalStorage.snapshot();
		
		  get() { return this.#runInAsyncScope(() => asyncLocalStorage.getStore()); }
		}
		
		const foo = asyncLocalStorage.run(123, () => new Foo());
		console.log(asyncLocalStorage.run(321, () => foo.get())); // returns 123
		```
	**/
	static function snapshot():(fn:(args:haxe.extern.Rest<Any>) -> Any, args:haxe.extern.Rest<Any>) -> Any;
}