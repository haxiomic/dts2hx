package node.util;

/**
	Takes a function following the common error-first callback style, i.e. taking
	an `(err, value) => ...` callback as the last argument, and returns a version
	that returns promises.
	
	```js
	import util from 'node:util';
	import fs from 'node:fs';
	
	const stat = util.promisify(fs.stat);
	stat('.').then((stats) => {
	  // Do something with `stats`
	}).catch((error) => {
	  // Handle the error.
	});
	```
	
	Or, equivalently using `async function`s:
	
	```js
	import util from 'node:util';
	import fs from 'node:fs';
	
	const stat = util.promisify(fs.stat);
	
	async function callStat() {
	  const stats = await stat('.');
	  console.log(`This directory is owned by ${stats.uid}`);
	}
	
	callStat();
	```
	
	If there is an `original[util.promisify.custom]` property present, `promisify` will return its value, see `Custom promisified functions`.
	
	`promisify()` assumes that `original` is a function taking a callback as its
	final argument in all cases. If `original` is not a function, `promisify()` will throw an error. If `original` is a function but its last argument is not
	an error-first callback, it will still be passed an error-first
	callback as its last argument.
	
	Using `promisify()` on class methods or other methods that use `this` may not
	work as expected unless handled specially:
	
	```js
	import util from 'node:util';
	
	class Foo {
	  constructor() {
	    this.a = 42;
	  }
	
	  bar(callback) {
	    callback(null, this.a);
	  }
	}
	
	const foo = new Foo();
	
	const naiveBar = util.promisify(foo.bar);
	// TypeError: Cannot read property 'a' of undefined
	// naiveBar().then(a => console.log(a));
	
	naiveBar.call(foo).then((a) => console.log(a)); // '42'
	
	const bindBar = naiveBar.bind(foo);
	bindBar().then((a) => console.log(a)); // '42'
	```
**/
@:jsRequire("util", "promisify") @valueModuleOnly extern class Promisify {
	/**
		Takes a function following the common error-first callback style, i.e. taking
		an `(err, value) => ...` callback as the last argument, and returns a version
		that returns promises.
		
		```js
		import util from 'node:util';
		import fs from 'node:fs';
		
		const stat = util.promisify(fs.stat);
		stat('.').then((stats) => {
		  // Do something with `stats`
		}).catch((error) => {
		  // Handle the error.
		});
		```
		
		Or, equivalently using `async function`s:
		
		```js
		import util from 'node:util';
		import fs from 'node:fs';
		
		const stat = util.promisify(fs.stat);
		
		async function callStat() {
		  const stats = await stat('.');
		  console.log(`This directory is owned by ${stats.uid}`);
		}
		
		callStat();
		```
		
		If there is an `original[util.promisify.custom]` property present, `promisify` will return its value, see `Custom promisified functions`.
		
		`promisify()` assumes that `original` is a function taking a callback as its
		final argument in all cases. If `original` is not a function, `promisify()` will throw an error. If `original` is a function but its last argument is not
		an error-first callback, it will still be passed an error-first
		callback as its last argument.
		
		Using `promisify()` on class methods or other methods that use `this` may not
		work as expected unless handled specially:
		
		```js
		import util from 'node:util';
		
		class Foo {
		  constructor() {
		    this.a = 42;
		  }
		
		  bar(callback) {
		    callback(null, this.a);
		  }
		}
		
		const foo = new Foo();
		
		const naiveBar = util.promisify(foo.bar);
		// TypeError: Cannot read property 'a' of undefined
		// naiveBar().then(a => console.log(a));
		
		naiveBar.call(foo).then((a) => console.log(a)); // '42'
		
		const bindBar = naiveBar.bind(foo);
		bindBar().then((a) => console.log(a)); // '42'
		```
	**/
	@:overload(function<TResult>(fn:(callback:(err:Dynamic, result:TResult) -> Void) -> Void):() -> js.lib.Promise<TResult> { })
	@:overload(function(fn:(callback:ts.AnyOf2<() -> Void, (err:Dynamic) -> Void>) -> Void):() -> js.lib.Promise<ts.Undefined> { })
	@:overload(function<T1, TResult>(fn:(arg1:T1, callback:(err:Dynamic, result:TResult) -> Void) -> Void):(arg1:T1) -> js.lib.Promise<TResult> { })
	@:overload(function<T1>(fn:(arg1:T1, callback:ts.AnyOf2<() -> Void, (err:Dynamic) -> Void>) -> Void):(arg1:T1) -> js.lib.Promise<ts.Undefined> { })
	@:overload(function<T1, T2, TResult>(fn:(arg1:T1, arg2:T2, callback:(err:Dynamic, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2>(fn:(arg1:T1, arg2:T2, callback:ts.AnyOf2<() -> Void, (err:Dynamic) -> Void>) -> Void):(arg1:T1, arg2:T2) -> js.lib.Promise<ts.Undefined> { })
	@:overload(function<T1, T2, T3, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, callback:(err:Dynamic, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3>(fn:(arg1:T1, arg2:T2, arg3:T3, callback:ts.AnyOf2<() -> Void, (err:Dynamic) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<ts.Undefined> { })
	@:overload(function<T1, T2, T3, T4, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:Dynamic, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3, T4>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:ts.AnyOf2<() -> Void, (err:Dynamic) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<ts.Undefined> { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:Dynamic, result:TResult) -> Void) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<TResult> { })
	@:overload(function<T1, T2, T3, T4, T5>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:ts.AnyOf2<() -> Void, (err:Dynamic) -> Void>) -> Void):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<ts.Undefined> { })
	@:overload(function(fn:haxe.Constraints.Function):haxe.Constraints.Function { })
	@:selfCall
	static function call<TCustom:(haxe.Constraints.Function)>(fn:CustomPromisify<TCustom>):TCustom;
	/**
		That can be used to declare custom promisified variants of functions.
	**/
	static final custom : js.lib.Symbol;
}