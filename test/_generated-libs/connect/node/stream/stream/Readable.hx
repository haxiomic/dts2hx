package node.stream.stream;

@:jsRequire("stream", "Stream.Readable") extern class Readable extends node.Stream {
	function new(?opts:ReadableOptions<Readable>);
	/**
		Returns whether the stream was destroyed or errored before emitting `'end'`.
	**/
	final readableAborted : Bool;
	/**
		Is `true` if it is safe to call
		{@link
		read
		}
		, which means
		the stream has not been destroyed or emitted `'error'` or `'end'`.
	**/
	var readable : Bool;
	/**
		Returns whether `'data'` has been emitted.
	**/
	final readableDidRead : Bool;
	/**
		Getter for the property `encoding` of a given `Readable` stream. The `encoding` property can be set using the
		{@link
		setEncoding
		}
		method.
	**/
	final readableEncoding : Null<global.nodejs.BufferEncoding>;
	/**
		Becomes `true` when [`'end'`](https://nodejs.org/docs/latest-v20.x/api/stream.html#event-end) event is emitted.
	**/
	final readableEnded : Bool;
	/**
		This property reflects the current state of a `Readable` stream as described
		in the [Three states](https://nodejs.org/docs/latest-v20.x/api/stream.html#three-states) section.
	**/
	final readableFlowing : Null<Bool>;
	/**
		Returns the value of `highWaterMark` passed when creating this `Readable`.
	**/
	final readableHighWaterMark : Float;
	/**
		This property contains the number of bytes (or objects) in the queue
		ready to be read. The value provides introspection data regarding
		the status of the `highWaterMark`.
	**/
	final readableLength : Float;
	/**
		Getter for the property `objectMode` of a given `Readable` stream.
	**/
	final readableObjectMode : Bool;
	/**
		Is `true` after `readable.destroy()` has been called.
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
	@:optional
	function _construct(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _read(size:Float):Void;
	/**
		The `readable.read()` method reads data out of the internal buffer and
		returns it. If no data is available to be read, `null` is returned. By default,
		the data is returned as a `Buffer` object unless an encoding has been
		specified using the `readable.setEncoding()` method or the stream is operating
		in object mode.
		
		The optional `size` argument specifies a specific number of bytes to read. If
		`size` bytes are not available to be read, `null` will be returned _unless_ the
		stream has ended, in which case all of the data remaining in the internal buffer
		will be returned.
		
		If the `size` argument is not specified, all of the data contained in the
		internal buffer will be returned.
		
		The `size` argument must be less than or equal to 1 GiB.
		
		The `readable.read()` method should only be called on `Readable` streams
		operating in paused mode. In flowing mode, `readable.read()` is called
		automatically until the internal buffer is fully drained.
		
		```js
		const readable = getReadableStreamSomehow();
		
		// 'readable' may be triggered multiple times as data is buffered in
		readable.on('readable', () => {
		  let chunk;
		  console.log('Stream is readable (new data received in buffer)');
		  // Use a loop to make sure we read all currently available data
		  while (null !== (chunk = readable.read())) {
		    console.log(`Read ${chunk.length} bytes of data...`);
		  }
		});
		
		// 'end' will be triggered once when there is no more data available
		readable.on('end', () => {
		  console.log('Reached end of stream.');
		});
		```
		
		Each call to `readable.read()` returns a chunk of data, or `null`. The chunks
		are not concatenated. A `while` loop is necessary to consume all data
		currently in the buffer. When reading a large file `.read()` may return `null`,
		having consumed all buffered content so far, but there is still more data to
		come not yet buffered. In this case a new `'readable'` event will be emitted
		when there is more data in the buffer. Finally the `'end'` event will be
		emitted when there is no more data to come.
		
		Therefore to read a file's whole contents from a `readable`, it is necessary
		to collect chunks across multiple `'readable'` events:
		
		```js
		const chunks = [];
		
		readable.on('readable', () => {
		  let chunk;
		  while (null !== (chunk = readable.read())) {
		    chunks.push(chunk);
		  }
		});
		
		readable.on('end', () => {
		  const content = chunks.join('');
		});
		```
		
		A `Readable` stream in object mode will always return a single item from
		a call to `readable.read(size)`, regardless of the value of the `size` argument.
		
		If the `readable.read()` method returns a chunk of data, a `'data'` event will
		also be emitted.
		
		Calling
		{@link
		read
		}
		after the `'end'` event has
		been emitted will return `null`. No runtime error will be raised.
	**/
	function read(?size:Float):Dynamic;
	/**
		The `readable.setEncoding()` method sets the character encoding for
		data read from the `Readable` stream.
		
		By default, no encoding is assigned and stream data will be returned as `Buffer` objects. Setting an encoding causes the stream data
		to be returned as strings of the specified encoding rather than as `Buffer` objects. For instance, calling `readable.setEncoding('utf8')` will cause the
		output data to be interpreted as UTF-8 data, and passed as strings. Calling `readable.setEncoding('hex')` will cause the data to be encoded in hexadecimal
		string format.
		
		The `Readable` stream will properly handle multi-byte characters delivered
		through the stream that would otherwise become improperly decoded if simply
		pulled from the stream as `Buffer` objects.
		
		```js
		const readable = getReadableStreamSomehow();
		readable.setEncoding('utf8');
		readable.on('data', (chunk) => {
		  assert.equal(typeof chunk, 'string');
		  console.log('Got %d characters of string data:', chunk.length);
		});
		```
	**/
	function setEncoding(encoding:global.nodejs.BufferEncoding):Readable;
	/**
		The `readable.pause()` method will cause a stream in flowing mode to stop
		emitting `'data'` events, switching out of flowing mode. Any data that
		becomes available will remain in the internal buffer.
		
		```js
		const readable = getReadableStreamSomehow();
		readable.on('data', (chunk) => {
		  console.log(`Received ${chunk.length} bytes of data.`);
		  readable.pause();
		  console.log('There will be no additional data for 1 second.');
		  setTimeout(() => {
		    console.log('Now data will start flowing again.');
		    readable.resume();
		  }, 1000);
		});
		```
		
		The `readable.pause()` method has no effect if there is a `'readable'` event listener.
	**/
	function pause():Readable;
	/**
		The `readable.resume()` method causes an explicitly paused `Readable` stream to
		resume emitting `'data'` events, switching the stream into flowing mode.
		
		The `readable.resume()` method can be used to fully consume the data from a
		stream without actually processing any of that data:
		
		```js
		getReadableStreamSomehow()
		  .resume()
		  .on('end', () => {
		    console.log('Reached the end, but did not read anything.');
		  });
		```
		
		The `readable.resume()` method has no effect if there is a `'readable'` event listener.
	**/
	function resume():Readable;
	/**
		The `readable.isPaused()` method returns the current operating state of the `Readable`.
		This is used primarily by the mechanism that underlies the `readable.pipe()` method.
		In most typical cases, there will be no reason to use this method directly.
		
		```js
		const readable = new stream.Readable();
		
		readable.isPaused(); // === false
		readable.pause();
		readable.isPaused(); // === true
		readable.resume();
		readable.isPaused(); // === false
		```
	**/
	function isPaused():Bool;
	/**
		The `readable.unpipe()` method detaches a `Writable` stream previously attached
		using the
		{@link
		pipe
		}
		method.
		
		If the `destination` is not specified, then _all_ pipes are detached.
		
		If the `destination` is specified, but no pipe is set up for it, then
		the method does nothing.
		
		```js
		import fs from 'node:fs';
		const readable = getReadableStreamSomehow();
		const writable = fs.createWriteStream('file.txt');
		// All the data from readable goes into 'file.txt',
		// but only for the first second.
		readable.pipe(writable);
		setTimeout(() => {
		  console.log('Stop writing to file.txt.');
		  readable.unpipe(writable);
		  console.log('Manually close the file stream.');
		  writable.end();
		}, 1000);
		```
	**/
	function unpipe(?destination:global.nodejs.WritableStream):Readable;
	/**
		Passing `chunk` as `null` signals the end of the stream (EOF) and behaves the
		same as `readable.push(null)`, after which no more data can be written. The EOF
		signal is put at the end of the buffer and any buffered data will still be
		flushed.
		
		The `readable.unshift()` method pushes a chunk of data back into the internal
		buffer. This is useful in certain situations where a stream is being consumed by
		code that needs to "un-consume" some amount of data that it has optimistically
		pulled out of the source, so that the data can be passed on to some other party.
		
		The `stream.unshift(chunk)` method cannot be called after the `'end'` event
		has been emitted or a runtime error will be thrown.
		
		Developers using `stream.unshift()` often should consider switching to
		use of a `Transform` stream instead. See the `API for stream implementers` section for more information.
		
		```js
		// Pull off a header delimited by \n\n.
		// Use unshift() if we get too much.
		// Call the callback with (error, header, stream).
		import { StringDecoder } from 'node:string_decoder';
		function parseHeader(stream, callback) {
		  stream.on('error', callback);
		  stream.on('readable', onReadable);
		  const decoder = new StringDecoder('utf8');
		  let header = '';
		  function onReadable() {
		    let chunk;
		    while (null !== (chunk = stream.read())) {
		      const str = decoder.write(chunk);
		      if (str.includes('\n\n')) {
		        // Found the header boundary.
		        const split = str.split(/\n\n/);
		        header += split.shift();
		        const remaining = split.join('\n\n');
		        const buf = Buffer.from(remaining, 'utf8');
		        stream.removeListener('error', callback);
		        // Remove the 'readable' listener before unshifting.
		        stream.removeListener('readable', onReadable);
		        if (buf.length)
		          stream.unshift(buf);
		        // Now the body of the message can be read from the stream.
		        callback(null, header, stream);
		        return;
		      }
		      // Still reading the header.
		      header += str;
		    }
		  }
		}
		```
		
		Unlike
		{@link
		push
		}
		, `stream.unshift(chunk)` will not
		end the reading process by resetting the internal reading state of the stream.
		This can cause unexpected results if `readable.unshift()` is called during a
		read (i.e. from within a
		{@link
		_read
		}
		implementation on a
		custom stream). Following the call to `readable.unshift()` with an immediate
		{@link
		push
		}
		will reset the reading state appropriately,
		however it is best to simply avoid calling `readable.unshift()` while in the
		process of performing a read.
	**/
	function unshift(chunk:Dynamic, ?encoding:global.nodejs.BufferEncoding):Void;
	/**
		Prior to Node.js 0.10, streams did not implement the entire `node:stream` module API as it is currently defined. (See `Compatibility` for more
		information.)
		
		When using an older Node.js library that emits `'data'` events and has a
		{@link
		pause
		}
		method that is advisory only, the `readable.wrap()` method can be used to create a `Readable`
		stream that uses
		the old stream as its data source.
		
		It will rarely be necessary to use `readable.wrap()` but the method has been
		provided as a convenience for interacting with older Node.js applications and
		libraries.
		
		```js
		import { OldReader } from './old-api-module.js';
		import { Readable } from 'node:stream';
		const oreader = new OldReader();
		const myReader = new Readable().wrap(oreader);
		
		myReader.on('readable', () => {
		  myReader.read(); // etc.
		});
		```
	**/
	function wrap(stream:global.nodejs.ReadableStream):Readable;
	function push(chunk:Dynamic, ?encoding:global.nodejs.BufferEncoding):Bool;
	/**
		The iterator created by this method gives users the option to cancel the destruction
		of the stream if the `for await...of` loop is exited by `return`, `break`, or `throw`,
		or if the iterator should destroy the stream if the stream emitted an error during iteration.
	**/
	function iterator(?options:{ @:optional var destroyOnReturn : Bool; }):global.nodejs.AsyncIterator<Dynamic, Dynamic, Dynamic>;
	/**
		This method allows mapping over the stream. The *fn* function will be called for every chunk in the stream.
		If the *fn* function returns a promise - that promise will be `await`ed before being passed to the result stream.
	**/
	function map(fn:ts.AnyOf2<(data:Dynamic) -> Dynamic, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> Dynamic>, ?options:ArrayOptions):Readable;
	/**
		This method allows filtering the stream. For each chunk in the stream the *fn* function will be called
		and if it returns a truthy value, the chunk will be passed to the result stream.
		If the *fn* function returns a promise - that promise will be `await`ed.
	**/
	function filter(fn:ts.AnyOf2<(data:Dynamic) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>>, ?options:ArrayOptions):Readable;
	/**
		This method allows iterating a stream. For each chunk in the stream the *fn* function will be called.
		If the *fn* function returns a promise - that promise will be `await`ed.
		
		This method is different from `for await...of` loops in that it can optionally process chunks concurrently.
		In addition, a `forEach` iteration can only be stopped by having passed a `signal` option
		and aborting the related AbortController while `for await...of` can be stopped with `break` or `return`.
		In either case the stream will be destroyed.
		
		This method is different from listening to the `'data'` event in that it uses the `readable` event
		in the underlying machinary and can limit the number of concurrent *fn* calls.
	**/
	function forEach(fn:ts.AnyOf2<(data:Dynamic) -> js.lib.Promise<ts.Undefined>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> js.lib.Promise<ts.Undefined>>, ?options:ArrayOptions):js.lib.Promise<ts.Undefined>;
	/**
		This method allows easily obtaining the contents of a stream.
		
		As this method reads the entire stream into memory, it negates the benefits of streams. It's intended
		for interoperability and convenience, not as the primary way to consume streams.
	**/
	function toArray(?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):js.lib.Promise<Array<Dynamic>>;
	/**
		This method is similar to `Array.prototype.some` and calls *fn* on each chunk in the stream
		until the awaited return value is `true` (or any truthy value). Once an *fn* call on a chunk
		`await`ed return value is truthy, the stream is destroyed and the promise is fulfilled with `true`.
		If none of the *fn* calls on the chunks return a truthy value, the promise is fulfilled with `false`.
	**/
	function some(fn:ts.AnyOf2<(data:Dynamic) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>>, ?options:ArrayOptions):js.lib.Promise<Bool>;
	/**
		This method is similar to `Array.prototype.find` and calls *fn* on each chunk in the stream
		to find a chunk with a truthy value for *fn*. Once an *fn* call's awaited return value is truthy,
		the stream is destroyed and the promise is fulfilled with value for which *fn* returned a truthy value.
		If all of the *fn* calls on the chunks return a falsy value, the promise is fulfilled with `undefined`.
	**/
	@:overload(function(fn:ts.AnyOf2<(data:Dynamic) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>>, ?options:ArrayOptions):js.lib.Promise<Dynamic> { })
	function find<T>(fn:ts.AnyOf2<(data:Dynamic) -> Bool, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> Bool>, ?options:ArrayOptions):js.lib.Promise<Null<T>>;
	/**
		This method is similar to `Array.prototype.every` and calls *fn* on each chunk in the stream
		to check if all awaited return values are truthy value for *fn*. Once an *fn* call on a chunk
		`await`ed return value is falsy, the stream is destroyed and the promise is fulfilled with `false`.
		If all of the *fn* calls on the chunks return a truthy value, the promise is fulfilled with `true`.
	**/
	function every(fn:ts.AnyOf2<(data:Dynamic) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> ts.AnyOf2<Bool, js.lib.Promise<Bool>>>, ?options:ArrayOptions):js.lib.Promise<Bool>;
	/**
		This method returns a new stream by applying the given callback to each chunk of the stream
		and then flattening the result.
		
		It is possible to return a stream or another iterable or async iterable from *fn* and the result streams
		will be merged (flattened) into the returned stream.
	**/
	function flatMap(fn:ts.AnyOf2<(data:Dynamic) -> Dynamic, (data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> Dynamic>, ?options:ArrayOptions):Readable;
	/**
		This method returns a new stream with the first *limit* chunks dropped from the start.
	**/
	function drop(limit:Float, ?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):Readable;
	/**
		This method returns a new stream with the first *limit* chunks.
	**/
	function take(limit:Float, ?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):Readable;
	/**
		This method returns a new stream with chunks of the underlying stream paired with a counter
		in the form `[index, chunk]`. The first index value is `0` and it increases by 1 for each chunk produced.
	**/
	function asIndexedPairs(?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):Readable;
	/**
		This method calls *fn* on each chunk of the stream in order, passing it the result from the calculation
		on the previous element. It returns a promise for the final value of the reduction.
		
		If no *initial* value is supplied the first chunk of the stream is used as the initial value.
		If the stream is empty, the promise is rejected with a `TypeError` with the `ERR_INVALID_ARGS` code property.
		
		The reducer function iterates the stream element-by-element which means that there is no *concurrency* parameter
		or parallelism. To perform a reduce concurrently, you can extract the async function to `readable.map` method.
	**/
	@:overload(function<T>(fn:ts.AnyOf2<(previous:T, data:Dynamic) -> T, (previous:T, data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> T>, initial:T, ?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):js.lib.Promise<T> { })
	function reduce<T>(fn:ts.AnyOf2<(previous:Dynamic, data:Dynamic) -> T, (previous:Dynamic, data:Dynamic, options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }) -> T>, ?initial:Any, ?options:{ /** Allows destroying the stream if the signal is aborted. **/ @:optional var signal : js.html.AbortSignal; }):js.lib.Promise<T>;
	function _destroy(error:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the readable
		stream will release any internal resources and subsequent calls to `push()` will be ignored.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method, but instead implement `readable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):Readable;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Readable { })
	function addListener(event:String, listener:() -> Void):Readable;
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
	@:overload(function(event:String, chunk:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Readable { })
	function on(event:String, listener:() -> Void):Readable;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Readable { })
	function once(event:String, listener:() -> Void):Readable;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Readable { })
	function prependListener(event:String, listener:() -> Void):Readable;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Readable { })
	function prependOnceListener(event:String, listener:() -> Void):Readable;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Readable { })
	function removeListener(event:String, listener:() -> Void):Readable;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Readable;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Readable;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Readable;
	static var prototype : Readable;
	/**
		A utility method for creating Readable Streams out of iterators.
	**/
	static function from(iterable:ts.AnyOf2<Iterable<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>, ?options:ReadableOptions<Readable>):Readable;
	/**
		A utility method for creating a `Readable` from a web `ReadableStream`.
	**/
	static function fromWeb(readableStream:node.stream.web.ReadableStream<Dynamic>, ?options:{ /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; @:optional var encoding : global.nodejs.BufferEncoding; @:optional var highWaterMark : Float; @:optional var objectMode : Bool; }):Readable;
	/**
		A utility method for creating a web `ReadableStream` from a `Readable`.
	**/
	static function toWeb(streamReadable:Readable, ?options:{ @:optional var strategy : node.stream.web.QueuingStrategy<Dynamic>; }):node.stream.web.ReadableStream<Dynamic>;
	/**
		Returns whether the stream has been read from or cancelled.
	**/
	static function isDisturbed(stream:ts.AnyOf2<global.nodejs.ReadableStream, Readable>):Bool;
}