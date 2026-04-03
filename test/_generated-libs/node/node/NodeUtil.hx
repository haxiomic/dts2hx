package node;

@:jsRequire("node:util") @valueModuleOnly extern class NodeUtil {
	/**
		The `util.format()` method returns a formatted string using the first argument
		as a `printf`-like format string which can contain zero or more format
		specifiers. Each specifier is replaced with the converted value from the
		corresponding argument. Supported specifiers are:
		
		If a specifier does not have a corresponding argument, it is not replaced:
		
		```js
		util.format('%s:%s', 'foo');
		// Returns: 'foo:%s'
		```
		
		Values that are not part of the format string are formatted using `util.inspect()` if their type is not `string`.
		
		If there are more arguments passed to the `util.format()` method than the
		number of specifiers, the extra arguments are concatenated to the returned
		string, separated by spaces:
		
		```js
		util.format('%s:%s', 'foo', 'bar', 'baz');
		// Returns: 'foo:bar baz'
		```
		
		If the first argument does not contain a valid format specifier, `util.format()` returns a string that is the concatenation of all arguments separated by spaces:
		
		```js
		util.format(1, 2, 3);
		// Returns: '1 2 3'
		```
		
		If only one argument is passed to `util.format()`, it is returned as it is
		without any formatting:
		
		```js
		util.format('%% %s');
		// Returns: '%% %s'
		```
		
		`util.format()` is a synchronous method that is intended as a debugging tool.
		Some input values can have a significant performance overhead that can block the
		event loop. Use this function with care and never in a hot code path.
	**/
	static function format(?format:Dynamic, param:haxe.extern.Rest<Dynamic>):String;
	/**
		This function is identical to
		{@link
		format
		}
		, except in that it takes
		an `inspectOptions` argument which specifies options that are passed along to
		{@link
		inspect
		}
		.
		
		```js
		util.formatWithOptions({ colors: true }, 'See object %O', { foo: 42 });
		// Returns 'See object { foo: 42 }', where `42` is colored as a number
		// when printed to a terminal.
		```
	**/
	static function formatWithOptions(inspectOptions:node.util.InspectOptions, ?format:Dynamic, param:haxe.extern.Rest<Dynamic>):String;
	/**
		Returns the string name for a numeric error code that comes from a Node.js API.
		The mapping between error codes and error names is platform-dependent.
		See `Common System Errors` for the names of common errors.
		
		```js
		fs.access('file/that/does/not/exist', (err) => {
		  const name = util.getSystemErrorName(err.errno);
		  console.error(name);  // ENOENT
		});
		```
	**/
	static function getSystemErrorName(err:Float):String;
	/**
		Returns a Map of all system error codes available from the Node.js API.
		The mapping between error codes and error names is platform-dependent.
		See `Common System Errors` for the names of common errors.
		
		```js
		fs.access('file/that/does/not/exist', (err) => {
		  const errorMap = util.getSystemErrorMap();
		  const name = errorMap.get(err.errno);
		  console.error(name);  // ENOENT
		});
		```
	**/
	static function getSystemErrorMap():js.lib.Map<Float, ts.Tuple2<String, String>>;
	/**
		The `util.log()` method prints the given `string` to `stdout` with an included
		timestamp.
		
		```js
		import util from 'node:util';
		
		util.log('Timestamped message.');
		```
	**/
	static function log(string:String):Void;
	/**
		Returns the `string` after replacing any surrogate code points
		(or equivalently, any unpaired surrogate code units) with the
		Unicode "replacement character" U+FFFD.
	**/
	static function toUSVString(string:String):String;
	/**
		Creates and returns an `AbortController` instance whose `AbortSignal` is marked
		as transferable and can be used with `structuredClone()` or `postMessage()`.
	**/
	static function transferableAbortController():js.html.AbortController;
	/**
		Marks the given `AbortSignal` as transferable so that it can be used with`structuredClone()` and `postMessage()`.
		
		```js
		const signal = transferableAbortSignal(AbortSignal.timeout(100));
		const channel = new MessageChannel();
		channel.port2.postMessage(signal, [signal]);
		```
	**/
	static function transferableAbortSignal(signal:js.html.AbortSignal):js.html.AbortSignal;
	/**
		Listens to abort event on the provided `signal` and
		returns a promise that is fulfilled when the `signal` is
		aborted. If the passed `resource` is garbage collected before the `signal` is
		aborted, the returned promise shall remain pending indefinitely.
		
		```js
		import { aborted } from 'node:util';
		
		const dependent = obtainSomethingAbortable();
		
		aborted(dependent.signal, dependent).then(() => {
		  // Do something when dependent is aborted.
		});
		
		dependent.on('event', () => {
		  dependent.abort();
		});
		```
	**/
	static function aborted(signal:js.html.AbortSignal, resource:Dynamic):js.lib.Promise<ts.Undefined>;
	/**
		The `util.inspect()` method returns a string representation of `object` that is
		intended for debugging. The output of `util.inspect` may change at any time
		and should not be depended upon programmatically. Additional `options` may be
		passed that alter the result. `util.inspect()` will use the constructor's name and/or `@@toStringTag` to make
		an identifiable tag for an inspected value.
		
		```js
		class Foo {
		  get [Symbol.toStringTag]() {
		    return 'bar';
		  }
		}
		
		class Bar {}
		
		const baz = Object.create(null, { [Symbol.toStringTag]: { value: 'foo' } });
		
		util.inspect(new Foo()); // 'Foo [bar] {}'
		util.inspect(new Bar()); // 'Bar {}'
		util.inspect(baz);       // '[foo] {}'
		```
		
		Circular references point to their anchor by using a reference index:
		
		```js
		import { inspect } from 'node:util';
		
		const obj = {};
		obj.a = [obj];
		obj.b = {};
		obj.b.inner = obj.b;
		obj.b.obj = obj;
		
		console.log(inspect(obj));
		// <ref *1> {
		//   a: [ [Circular *1] ],
		//   b: <ref *2> { inner: [Circular *2], obj: [Circular *1] }
		// }
		```
		
		The following example inspects all properties of the `util` object:
		
		```js
		import util from 'node:util';
		
		console.log(util.inspect(util, { showHidden: true, depth: null }));
		```
		
		The following example highlights the effect of the `compact` option:
		
		```js
		import util from 'node:util';
		
		const o = {
		  a: [1, 2, [[
		    'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do ' +
		      'eiusmod \ntempor incididunt ut labore et dolore magna aliqua.',
		    'test',
		    'foo']], 4],
		  b: new Map([['za', 1], ['zb', 'test']]),
		};
		console.log(util.inspect(o, { compact: true, depth: 5, breakLength: 80 }));
		
		// { a:
		//   [ 1,
		//     2,
		//     [ [ 'Lorem ipsum dolor sit amet,\nconsectetur [...]', // A long line
		//           'test',
		//           'foo' ] ],
		//     4 ],
		//   b: Map(2) { 'za' => 1, 'zb' => 'test' } }
		
		// Setting `compact` to false or an integer creates more reader friendly output.
		console.log(util.inspect(o, { compact: false, depth: 5, breakLength: 80 }));
		
		// {
		//   a: [
		//     1,
		//     2,
		//     [
		//       [
		//         'Lorem ipsum dolor sit amet,\n' +
		//           'consectetur adipiscing elit, sed do eiusmod \n' +
		//           'tempor incididunt ut labore et dolore magna aliqua.',
		//         'test',
		//         'foo'
		//       ]
		//     ],
		//     4
		//   ],
		//   b: Map(2) {
		//     'za' => 1,
		//     'zb' => 'test'
		//   }
		// }
		
		// Setting `breakLength` to e.g. 150 will print the "Lorem ipsum" text in a
		// single line.
		```
		
		The `showHidden` option allows [`WeakMap`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap) and
		[`WeakSet`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet) entries to be
		inspected. If there are more entries than `maxArrayLength`, there is no
		guarantee which entries are displayed. That means retrieving the same [`WeakSet`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet) entries twice may
		result in different output. Furthermore, entries
		with no remaining strong references may be garbage collected at any time.
		
		```js
		import { inspect } from 'node:util';
		
		const obj = { a: 1 };
		const obj2 = { b: 2 };
		const weakSet = new WeakSet([obj, obj2]);
		
		console.log(inspect(weakSet, { showHidden: true }));
		// WeakSet { { a: 1 }, { b: 2 } }
		```
		
		The `sorted` option ensures that an object's property insertion order does not
		impact the result of `util.inspect()`.
		
		```js
		import { inspect } from 'node:util';
		import assert from 'node:assert';
		
		const o1 = {
		  b: [2, 3, 1],
		  a: '`a` comes before `b`',
		  c: new Set([2, 3, 1]),
		};
		console.log(inspect(o1, { sorted: true }));
		// { a: '`a` comes before `b`', b: [ 2, 3, 1 ], c: Set(3) { 1, 2, 3 } }
		console.log(inspect(o1, { sorted: (a, b) => b.localeCompare(a) }));
		// { c: Set(3) { 3, 2, 1 }, b: [ 2, 3, 1 ], a: '`a` comes before `b`' }
		
		const o2 = {
		  c: new Set([2, 1, 3]),
		  a: '`a` comes before `b`',
		  b: [2, 3, 1],
		};
		assert.strict.equal(
		  inspect(o1, { sorted: true }),
		  inspect(o2, { sorted: true }),
		);
		```
		
		The `numericSeparator` option adds an underscore every three digits to all
		numbers.
		
		```js
		import { inspect } from 'node:util';
		
		const thousand = 1_000;
		const million = 1_000_000;
		const bigNumber = 123_456_789n;
		const bigDecimal = 1_234.123_45;
		
		console.log(inspect(thousand, { numericSeparator: true }));
		// 1_000
		console.log(inspect(million, { numericSeparator: true }));
		// 1_000_000
		console.log(inspect(bigNumber, { numericSeparator: true }));
		// 123_456_789n
		console.log(inspect(bigDecimal, { numericSeparator: true }));
		// 1_234.123_45
		```
		
		`util.inspect()` is a synchronous method intended for debugging. Its maximum
		output length is approximately 128 MiB. Inputs that result in longer output will
		be truncated.
	**/
	@:overload(function(object:Dynamic, ?options:node.util.InspectOptions):String { })
	static function inspect(object:Dynamic, ?showHidden:Bool, ?depth:Float, ?color:Bool):String;
	/**
		Alias for [`Array.isArray()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/isArray).
		
		Returns `true` if the given `object` is an `Array`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isArray([]);
		// Returns: true
		util.isArray(new Array());
		// Returns: true
		util.isArray({});
		// Returns: false
		```
	**/
	static function isArray(object:Any):Bool;
	/**
		Returns `true` if the given `object` is a `RegExp`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isRegExp(/some regexp/);
		// Returns: true
		util.isRegExp(new RegExp('another regexp'));
		// Returns: true
		util.isRegExp({});
		// Returns: false
		```
	**/
	static function isRegExp(object:Any):Bool;
	/**
		Returns `true` if the given `object` is a `Date`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isDate(new Date());
		// Returns: true
		util.isDate(Date());
		// false (without 'new' returns a String)
		util.isDate({});
		// Returns: false
		```
	**/
	static function isDate(object:Any):Bool;
	/**
		Returns `true` if the given `object` is an `Error`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isError(new Error());
		// Returns: true
		util.isError(new TypeError());
		// Returns: true
		util.isError({ name: 'Error', message: 'an error occurred' });
		// Returns: false
		```
		
		This method relies on `Object.prototype.toString()` behavior. It is
		possible to obtain an incorrect result when the `object` argument manipulates `@@toStringTag`.
		
		```js
		import util from 'node:util';
		const obj = { name: 'Error', message: 'an error occurred' };
		
		util.isError(obj);
		// Returns: false
		obj[Symbol.toStringTag] = 'Error';
		util.isError(obj);
		// Returns: true
		```
	**/
	static function isError(object:Any):Bool;
	/**
		Usage of `util.inherits()` is discouraged. Please use the ES6 `class` and `extends` keywords to get language level inheritance support. Also note
		that the two styles are [semantically incompatible](https://github.com/nodejs/node/issues/4179).
		
		Inherit the prototype methods from one [constructor](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/constructor) into another. The
		prototype of `constructor` will be set to a new object created from `superConstructor`.
		
		This mainly adds some input validation on top of`Object.setPrototypeOf(constructor.prototype, superConstructor.prototype)`.
		As an additional convenience, `superConstructor` will be accessible
		through the `constructor.super_` property.
		
		```js
		import util from 'node:util';
		import EventEmitter from 'node:events';
		
		function MyStream() {
		  EventEmitter.call(this);
		}
		
		util.inherits(MyStream, EventEmitter);
		
		MyStream.prototype.write = function(data) {
		  this.emit('data', data);
		};
		
		const stream = new MyStream();
		
		console.log(stream instanceof EventEmitter); // true
		console.log(MyStream.super_ === EventEmitter); // true
		
		stream.on('data', (data) => {
		  console.log(`Received data: "${data}"`);
		});
		stream.write('It works!'); // Received data: "It works!"
		```
		
		ES6 example using `class` and `extends`:
		
		```js
		import EventEmitter from 'node:events';
		
		class MyStream extends EventEmitter {
		  write(data) {
		    this.emit('data', data);
		  }
		}
		
		const stream = new MyStream();
		
		stream.on('data', (data) => {
		  console.log(`Received data: "${data}"`);
		});
		stream.write('With ES6');
		```
	**/
	static function inherits(constructor:Any, superConstructor:Any):Void;
	/**
		The `util.debuglog()` method is used to create a function that conditionally
		writes debug messages to `stderr` based on the existence of the `NODE_DEBUG`environment variable. If the `section` name appears within the value of that
		environment variable, then the returned function operates similar to `console.error()`. If not, then the returned function is a no-op.
		
		```js
		import util from 'node:util';
		const debuglog = util.debuglog('foo');
		
		debuglog('hello from foo [%d]', 123);
		```
		
		If this program is run with `NODE_DEBUG=foo` in the environment, then
		it will output something like:
		
		```console
		FOO 3245: hello from foo [123]
		```
		
		where `3245` is the process id. If it is not run with that
		environment variable set, then it will not print anything.
		
		The `section` supports wildcard also:
		
		```js
		import util from 'node:util';
		const debuglog = util.debuglog('foo-bar');
		
		debuglog('hi there, it\'s foo-bar [%d]', 2333);
		```
		
		if it is run with `NODE_DEBUG=foo*` in the environment, then it will output
		something like:
		
		```console
		FOO-BAR 3257: hi there, it's foo-bar [2333]
		```
		
		Multiple comma-separated `section` names may be specified in the `NODE_DEBUG`environment variable: `NODE_DEBUG=fs,net,tls`.
		
		The optional `callback` argument can be used to replace the logging function
		with a different function that doesn't have any initialization or
		unnecessary wrapping.
		
		```js
		import util from 'node:util';
		let debuglog = util.debuglog('internals', (debug) => {
		  // Replace with a logging function that optimizes out
		  // testing if the section is enabled
		  debuglog = debug;
		});
		```
	**/
	static function debuglog(section:String, ?callback:(fn:node.util.DebugLoggerFunction) -> Void):node.util.DebugLogger;
	/**
		Returns `true` if the given `object` is a `Boolean`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isBoolean(1);
		// Returns: false
		util.isBoolean(0);
		// Returns: false
		util.isBoolean(false);
		// Returns: true
		```
	**/
	static function isBoolean(object:Any):Bool;
	/**
		Returns `true` if the given `object` is a `Buffer`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isBuffer({ length: 0 });
		// Returns: false
		util.isBuffer([]);
		// Returns: false
		util.isBuffer(Buffer.from('hello world'));
		// Returns: true
		```
	**/
	static function isBuffer(object:Any):Bool;
	/**
		Returns `true` if the given `object` is a `Function`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		function Foo() {}
		const Bar = () => {};
		
		util.isFunction({});
		// Returns: false
		util.isFunction(Foo);
		// Returns: true
		util.isFunction(Bar);
		// Returns: true
		```
	**/
	static function isFunction(object:Any):Bool;
	/**
		Returns `true` if the given `object` is strictly `null`. Otherwise, returns`false`.
		
		```js
		import util from 'node:util';
		
		util.isNull(0);
		// Returns: false
		util.isNull(undefined);
		// Returns: false
		util.isNull(null);
		// Returns: true
		```
	**/
	static function isNull(object:Any):Bool;
	/**
		Returns `true` if the given `object` is `null` or `undefined`. Otherwise,
		returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isNullOrUndefined(0);
		// Returns: false
		util.isNullOrUndefined(undefined);
		// Returns: true
		util.isNullOrUndefined(null);
		// Returns: true
		```
	**/
	static function isNullOrUndefined(object:Any):Bool;
	/**
		Returns `true` if the given `object` is a `Number`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isNumber(false);
		// Returns: false
		util.isNumber(Infinity);
		// Returns: true
		util.isNumber(0);
		// Returns: true
		util.isNumber(NaN);
		// Returns: true
		```
	**/
	static function isNumber(object:Any):Bool;
	/**
		Returns `true` if the given `object` is strictly an `Object`**and** not a`Function` (even though functions are objects in JavaScript).
		Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isObject(5);
		// Returns: false
		util.isObject(null);
		// Returns: false
		util.isObject({});
		// Returns: true
		util.isObject(() => {});
		// Returns: false
		```
	**/
	static function isObject(object:Any):Bool;
	/**
		Returns `true` if the given `object` is a primitive type. Otherwise, returns`false`.
		
		```js
		import util from 'node:util';
		
		util.isPrimitive(5);
		// Returns: true
		util.isPrimitive('foo');
		// Returns: true
		util.isPrimitive(false);
		// Returns: true
		util.isPrimitive(null);
		// Returns: true
		util.isPrimitive(undefined);
		// Returns: true
		util.isPrimitive({});
		// Returns: false
		util.isPrimitive(() => {});
		// Returns: false
		util.isPrimitive(/^$/);
		// Returns: false
		util.isPrimitive(new Date());
		// Returns: false
		```
	**/
	static function isPrimitive(object:Any):Bool;
	/**
		Returns `true` if the given `object` is a `string`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isString('');
		// Returns: true
		util.isString('foo');
		// Returns: true
		util.isString(String('foo'));
		// Returns: true
		util.isString(5);
		// Returns: false
		```
	**/
	static function isString(object:Any):Bool;
	/**
		Returns `true` if the given `object` is a `Symbol`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		util.isSymbol(5);
		// Returns: false
		util.isSymbol('foo');
		// Returns: false
		util.isSymbol(Symbol('foo'));
		// Returns: true
		```
	**/
	static function isSymbol(object:Any):Bool;
	/**
		Returns `true` if the given `object` is `undefined`. Otherwise, returns `false`.
		
		```js
		import util from 'node:util';
		
		const foo = undefined;
		util.isUndefined(5);
		// Returns: false
		util.isUndefined(foo);
		// Returns: true
		util.isUndefined(null);
		// Returns: false
		```
	**/
	static function isUndefined(object:Any):Bool;
	/**
		The `util.deprecate()` method wraps `fn` (which may be a function or class) in
		such a way that it is marked as deprecated.
		
		```js
		import util from 'node:util';
		
		exports.obsoleteFunction = util.deprecate(() => {
		  // Do something here.
		}, 'obsoleteFunction() is deprecated. Use newShinyFunction() instead.');
		```
		
		When called, `util.deprecate()` will return a function that will emit a `DeprecationWarning` using the `'warning'` event. The warning will
		be emitted and printed to `stderr` the first time the returned function is
		called. After the warning is emitted, the wrapped function is called without
		emitting a warning.
		
		If the same optional `code` is supplied in multiple calls to `util.deprecate()`,
		the warning will be emitted only once for that `code`.
		
		```js
		import util from 'node:util';
		
		const fn1 = util.deprecate(someFunction, someMessage, 'DEP0001');
		const fn2 = util.deprecate(someOtherFunction, someOtherMessage, 'DEP0001');
		fn1(); // Emits a deprecation warning with code DEP0001
		fn2(); // Does not emit a deprecation warning because it has the same code
		```
		
		If either the `--no-deprecation` or `--no-warnings` command-line flags are
		used, or if the `process.noDeprecation` property is set to `true`_prior_ to
		the first deprecation warning, the `util.deprecate()` method does nothing.
		
		If the `--trace-deprecation` or `--trace-warnings` command-line flags are set,
		or the `process.traceDeprecation` property is set to `true`, a warning and a
		stack trace are printed to `stderr` the first time the deprecated function is
		called.
		
		If the `--throw-deprecation` command-line flag is set, or the `process.throwDeprecation` property is set to `true`, then an exception will be
		thrown when the deprecated function is called.
		
		The `--throw-deprecation` command-line flag and `process.throwDeprecation` property take precedence over `--trace-deprecation` and `process.traceDeprecation`.
	**/
	static function deprecate<T:(haxe.Constraints.Function)>(fn:T, msg:String, ?code:String):T;
	/**
		Returns `true` if there is deep strict equality between `val1` and `val2`.
		Otherwise, returns `false`.
		
		See `assert.deepStrictEqual()` for more information about deep strict
		equality.
	**/
	static function isDeepStrictEqual(val1:Any, val2:Any):Bool;
	/**
		Returns `str` with any ANSI escape codes removed.
		
		```js
		console.log(util.stripVTControlCharacters('\u001B[4mvalue\u001B[0m'));
		// Prints "value"
		```
	**/
	static function stripVTControlCharacters(str:String):String;
	/**
		Takes an `async` function (or a function that returns a `Promise`) and returns a
		function following the error-first callback style, i.e. taking
		an `(err, value) => ...` callback as the last argument. In the callback, the
		first argument will be the rejection reason (or `null` if the `Promise` resolved), and the second argument will be the resolved value.
		
		```js
		import util from 'node:util';
		
		async function fn() {
		  return 'hello world';
		}
		const callbackFunction = util.callbackify(fn);
		
		callbackFunction((err, ret) => {
		  if (err) throw err;
		  console.log(ret);
		});
		```
		
		Will print:
		
		```text
		hello world
		```
		
		The callback is executed asynchronously, and will have a limited stack trace.
		If the callback throws, the process will emit an `'uncaughtException'` event, and if not handled will exit.
		
		Since `null` has a special meaning as the first argument to a callback, if a
		wrapped function rejects a `Promise` with a falsy value as a reason, the value
		is wrapped in an `Error` with the original value stored in a field named `reason`.
		
		```js
		function fn() {
		  return Promise.reject(null);
		}
		const callbackFunction = util.callbackify(fn);
		
		callbackFunction((err, ret) => {
		  // When the Promise was rejected with `null` it is wrapped with an Error and
		  // the original value is stored in `reason`.
		  err &#x26;&#x26; Object.hasOwn(err, 'reason') &#x26;&#x26; err.reason === null;  // true
		});
		```
	**/
	@:overload(function<TResult>(fn:() -> js.lib.Promise<TResult>):(callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1>(fn:(arg1:T1) -> js.lib.Promise<ts.Undefined>):(arg1:T1, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, TResult>(fn:(arg1:T1) -> js.lib.Promise<TResult>):(arg1:T1, callback:(err:global.nodejs.ErrnoException, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2>(fn:(arg1:T1, arg2:T2) -> js.lib.Promise<ts.Undefined>):(arg1:T1, arg2:T2, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, TResult>(fn:(arg1:T1, arg2:T2) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, callback:(err:Null<global.nodejs.ErrnoException>, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3>(fn:(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<ts.Undefined>):(arg1:T1, arg2:T2, arg3:T3, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, callback:(err:Null<global.nodejs.ErrnoException>, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<ts.Undefined>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, callback:(err:Null<global.nodejs.ErrnoException>, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<ts.Undefined>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, callback:(err:Null<global.nodejs.ErrnoException>, result:TResult) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, T6>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6) -> js.lib.Promise<ts.Undefined>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6, callback:(err:global.nodejs.ErrnoException) -> Void) -> Void { })
	@:overload(function<T1, T2, T3, T4, T5, T6, TResult>(fn:(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6) -> js.lib.Promise<TResult>):(arg1:T1, arg2:T2, arg3:T3, arg4:T4, arg5:T5, arg6:T6, callback:(err:Null<global.nodejs.ErrnoException>, result:TResult) -> Void) -> Void { })
	static function callbackify(fn:() -> js.lib.Promise<ts.Undefined>):(callback:(err:global.nodejs.ErrnoException) -> Void) -> Void;
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
	static function promisify<TCustom:(haxe.Constraints.Function)>(fn:node.util.CustomPromisify<TCustom>):TCustom;
	/**
		Stability: 1.1 - Active development
		Given an example `.env` file:
		
		```js
		import { parseEnv } from 'node:util';
		
		parseEnv('HELLO=world\nHELLO=oh my\n');
		// Returns: { HELLO: 'oh my' }
		```
	**/
	static function parseEnv(content:String):global.nodejs.Dict<String>;
	/**
		Stability: 1.1 - Active development
		
		This function returns a formatted text considering the `format` passed.
		
		```js
		import { styleText } from 'node:util';
		const errorMessage = styleText('red', 'Error! Error!');
		console.log(errorMessage);
		```
		
		`util.inspect.colors` also provides text formats such as `italic`, and `underline` and you can combine both:
		
		```js
		console.log(
		  util.styleText(['underline', 'italic'], 'My italic underlined message'),
		);
		```
		
		When passing an array of formats, the order of the format applied is left to right so the following style
		might overwrite the previous one.
		
		```js
		console.log(
		  util.styleText(['red', 'green'], 'text'), // green
		);
		```
		
		The full list of formats can be found in [modifiers](https://nodejs.org/docs/latest-v20.x/api/util.html#modifiers).
	**/
	static function styleText(format:ts.AnyOf2<String, Array<String>>, text:String, ?options:node.util.StyleTextOptions):String;
	/**
		Provides a higher level API for command-line argument parsing than interacting
		with `process.argv` directly. Takes a specification for the expected arguments
		and returns a structured object with the parsed options and positionals.
		
		```js
		import { parseArgs } from 'node:util';
		const args = ['-f', '--bar', 'b'];
		const options = {
		  foo: {
		    type: 'boolean',
		    short: 'f',
		  },
		  bar: {
		    type: 'string',
		  },
		};
		const {
		  values,
		  positionals,
		} = parseArgs({ args, options });
		console.log(values, positionals);
		// Prints: [Object: null prototype] { foo: true, bar: 'b' } []
		```
	**/
	static function parseArgs<T:(node.util.ParseArgsConfig)>(?config:T):NodeUtil<T>;
	static function debug(section:String, ?callback:(fn:node.util.DebugLoggerFunction) -> Void):node.util.DebugLogger;
}