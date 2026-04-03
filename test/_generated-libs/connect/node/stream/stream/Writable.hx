package node.stream.stream;

@:jsRequire("stream", "Stream.Writable") extern class Writable extends node.Stream {
	function new(?opts:WritableOptions<Writable>);
	/**
		Is `true` if it is safe to call `writable.write()`, which means
		the stream has not been destroyed, errored, or ended.
	**/
	final writable : Bool;
	/**
		Returns whether the stream was destroyed or errored before emitting `'finish'`.
	**/
	final writableAborted : Bool;
	/**
		Is `true` after `writable.end()` has been called. This property
		does not indicate whether the data has been flushed, for this use `writable.writableFinished` instead.
	**/
	final writableEnded : Bool;
	/**
		Is set to `true` immediately before the `'finish'` event is emitted.
	**/
	final writableFinished : Bool;
	/**
		Return the value of `highWaterMark` passed when creating this `Writable`.
	**/
	final writableHighWaterMark : Float;
	/**
		This property contains the number of bytes (or objects) in the queue
		ready to be written. The value provides introspection data regarding
		the status of the `highWaterMark`.
	**/
	final writableLength : Float;
	/**
		Getter for the property `objectMode` of a given `Writable` stream.
	**/
	final writableObjectMode : Bool;
	/**
		Number of times `writable.uncork()` needs to be
		called in order to fully uncork the stream.
	**/
	final writableCorked : Float;
	/**
		Is `true` after `writable.destroy()` has been called.
	**/
	var destroyed : Bool;
	/**
		Is `true` after `'close'` has been emitted.
	**/
	final closed : Bool;
	/**
		Returns error if the stream has been destroyed with an error.
	**/
	final errored : Null<js.lib.Error>;
	/**
		Is `true` if the stream's buffer has been full and stream will emit `'drain'`.
	**/
	final writableNeedDrain : Bool;
	function _write(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : global.nodejs.BufferEncoding; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _construct(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _destroy(error:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	/**
		The `writable.write()` method writes some data to the stream, and calls the
		supplied `callback` once the data has been fully handled. If an error
		occurs, the `callback` will be called with the error as its
		first argument. The `callback` is called asynchronously and before `'error'` is
		emitted.
		
		The return value is `true` if the internal buffer is less than the `highWaterMark` configured when the stream was created after admitting `chunk`.
		If `false` is returned, further attempts to write data to the stream should
		stop until the `'drain'` event is emitted.
		
		While a stream is not draining, calls to `write()` will buffer `chunk`, and
		return false. Once all currently buffered chunks are drained (accepted for
		delivery by the operating system), the `'drain'` event will be emitted.
		Once `write()` returns false, do not write more chunks
		until the `'drain'` event is emitted. While calling `write()` on a stream that
		is not draining is allowed, Node.js will buffer all written chunks until
		maximum memory usage occurs, at which point it will abort unconditionally.
		Even before it aborts, high memory usage will cause poor garbage collector
		performance and high RSS (which is not typically released back to the system,
		even after the memory is no longer required). Since TCP sockets may never
		drain if the remote peer does not read the data, writing a socket that is
		not draining may lead to a remotely exploitable vulnerability.
		
		Writing data while the stream is not draining is particularly
		problematic for a `Transform`, because the `Transform` streams are paused
		by default until they are piped or a `'data'` or `'readable'` event handler
		is added.
		
		If the data to be written can be generated or fetched on demand, it is
		recommended to encapsulate the logic into a `Readable` and use
		{@link
		pipe
		}
		. However, if calling `write()` is preferred, it is
		possible to respect backpressure and avoid memory issues using the `'drain'` event:
		
		```js
		function write(data, cb) {
		  if (!stream.write(data)) {
		    stream.once('drain', cb);
		  } else {
		    process.nextTick(cb);
		  }
		}
		
		// Wait for cb to be called before doing any other write.
		write('hello', () => {
		  console.log('Write completed, do more writes now.');
		});
		```
		
		A `Writable` stream in object mode will always ignore the `encoding` argument.
	**/
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?callback:(error:Null<js.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?callback:(error:Null<js.lib.Error>) -> Void):Bool;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):Writable;
	/**
		Calling the `writable.end()` method signals that no more data will be written
		to the `Writable`. The optional `chunk` and `encoding` arguments allow one
		final additional chunk of data to be written immediately before closing the
		stream.
		
		Calling the
		{@link
		write
		}
		method after calling
		{@link
		end
		}
		will raise an error.
		
		```js
		// Write 'hello, ' and then end with 'world!'.
		import fs from 'node:fs';
		const file = fs.createWriteStream('example.txt');
		file.write('hello, ');
		file.end('world!');
		// Writing more now is not allowed!
		```
	**/
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Writable { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):Writable { })
	function end(?cb:() -> Void):Writable;
	/**
		The `writable.cork()` method forces all written data to be buffered in memory.
		The buffered data will be flushed when either the
		{@link
		uncork
		}
		or
		{@link
		end
		}
		methods are called.
		
		The primary intent of `writable.cork()` is to accommodate a situation in which
		several small chunks are written to the stream in rapid succession. Instead of
		immediately forwarding them to the underlying destination, `writable.cork()` buffers all the chunks until `writable.uncork()` is called, which will pass them
		all to `writable._writev()`, if present. This prevents a head-of-line blocking
		situation where data is being buffered while waiting for the first small chunk
		to be processed. However, use of `writable.cork()` without implementing `writable._writev()` may have an adverse effect on throughput.
		
		See also: `writable.uncork()`, `writable._writev()`.
	**/
	function cork():Void;
	/**
		The `writable.uncork()` method flushes all data buffered since
		{@link
		cork
		}
		was called.
		
		When using `writable.cork()` and `writable.uncork()` to manage the buffering
		of writes to a stream, defer calls to `writable.uncork()` using `process.nextTick()`. Doing so allows batching of all `writable.write()` calls that occur within a given Node.js event
		loop phase.
		
		```js
		stream.cork();
		stream.write('some ');
		stream.write('data ');
		process.nextTick(() => stream.uncork());
		```
		
		If the `writable.cork()` method is called multiple times on a stream, the
		same number of calls to `writable.uncork()` must be called to flush the buffered
		data.
		
		```js
		stream.cork();
		stream.write('some ');
		stream.cork();
		stream.write('data ');
		process.nextTick(() => {
		  stream.uncork();
		  // The data will not be flushed until uncork() is called a second time.
		  stream.uncork();
		});
		```
		
		See also: `writable.cork()`.
	**/
	function uncork():Void;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the writable
		stream has ended and subsequent calls to `write()` or `end()` will result in
		an `ERR_STREAM_DESTROYED` error.
		This is a destructive and immediate way to destroy a stream. Previous calls to `write()` may not have drained, and may trigger an `ERR_STREAM_DESTROYED` error.
		Use `end()` instead of destroy if data should flush before close, or wait for
		the `'drain'` event before destroying the stream.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method,
		but instead implement `writable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):Writable;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function addListener(event:String, listener:() -> Void):Writable;
	/**
		Synchronously calls each of the listeners registered for the event named `eventName`, in the order they were registered, passing the supplied arguments
		to each.
		
		Returns `true` if the event had listeners, `false` otherwise.
		
		```js
		import { EventEmitter } from 'node:events';
		const myEmitter = new EventEmitter();
		
		// First listener
		myEmitter.on('event', function firstListener() {
		  console.log('Helloooo! first listener');
		});
		// Second listener
		myEmitter.on('event', function secondListener(arg1, arg2) {
		  console.log(`event with parameters ${arg1}, ${arg2} in second listener`);
		});
		// Third listener
		myEmitter.on('event', function thirdListener(...args) {
		  const parameters = args.join(', ');
		  console.log(`event with parameters ${parameters} in third listener`);
		});
		
		console.log(myEmitter.listeners('event'));
		
		myEmitter.emit('event', 1, 2, 3, 4, 5);
		
		// Prints:
		// [
		//   [Function: firstListener],
		//   [Function: secondListener],
		//   [Function: thirdListener]
		// ]
		// Helloooo! first listener
		// event with parameters 1, 2 in second listener
		// event with parameters 1, 2, 3, 4, 5 in third listener
		```
	**/
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, src:Readable):Bool { })
	@:overload(function(event:String, src:Readable):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	/**
		Adds the `listener` function to the end of the listeners array for the event
		named `eventName`. No checks are made to see if the `listener` has already
		been added. Multiple calls passing the same combination of `eventName` and
		`listener` will result in the `listener` being added, and called, multiple times.
		
		```js
		server.on('connection', (stream) => {
		  console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The `emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		import { EventEmitter } from 'node:events';
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function on(event:String, listener:() -> Void):Writable;
	/**
		Adds a **one-time** `listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		  console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The `emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		import { EventEmitter } from 'node:events';
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function once(event:String, listener:() -> Void):Writable;
	/**
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`
		and `listener` will result in the `listener` being added, and called, multiple times.
		
		```js
		server.prependListener('connection', (stream) => {
		  console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function prependListener(event:String, listener:() -> Void):Writable;
	/**
		Adds a **one-time**`listener` function for the event named `eventName` to the _beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		  console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function prependOnceListener(event:String, listener:() -> Void):Writable;
	/**
		Removes the specified `listener` from the listener array for the event named `eventName`.
		
		```js
		const callback = (stream) => {
		  console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any `removeListener()` or `removeAllListeners()` calls _after_ emitting and _before_ the last listener finishes execution
		will not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		import { EventEmitter } from 'node:events';
		class MyEmitter extends EventEmitter {}
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		  console.log('A');
		  myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		  console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')` listener is removed:
		
		```js
		import { EventEmitter } from 'node:events';
		const ee = new EventEmitter();
		
		function pong() {
		  console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function removeListener(event:String, listener:() -> Void):Writable;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Writable;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Writable;
	static var prototype : Writable;
	/**
		A utility method for creating a `Writable` from a web `WritableStream`.
	**/
	static function fromWeb(writableStream:node.stream.web.WritableStream<Dynamic>, ?options:{ /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; @:optional var highWaterMark : Float; @:optional var objectMode : Bool; @:optional var decodeStrings : Bool; }):Writable;
	/**
		A utility method for creating a web `WritableStream` from a `Writable`.
	**/
	static function toWeb(streamWritable:Writable):node.stream.web.WritableStream<Dynamic>;
}