package node.crypto;

/**
	The `Hash` class is a utility for creating hash digests of data. It can be
	used in one of two ways:
	
	* As a `stream` that is both readable and writable, where data is written
	to produce a computed hash digest on the readable side, or
	* Using the `hash.update()` and `hash.digest()` methods to produce the
	computed hash.
	
	The
	{@link
	createHash
	}
	method is used to create `Hash` instances. `Hash`objects are not to be created directly using the `new` keyword.
	
	Example: Using `Hash` objects as streams:
	
	```js
	const {
	  createHash,
	} = await import('node:crypto');
	
	const hash = createHash('sha256');
	
	hash.on('readable', () => {
	  // Only one element is going to be produced by the
	  // hash stream.
	  const data = hash.read();
	  if (data) {
	    console.log(data.toString('hex'));
	    // Prints:
	    //   6a2da20943931e9834fc12cfe5bb47bbd9ae43489a30726962b576f4e3993e50
	  }
	});
	
	hash.write('some data to hash');
	hash.end();
	```
	
	Example: Using `Hash` and piped streams:
	
	```js
	import { createReadStream } from 'node:fs';
	import { stdout } from 'node:process';
	const { createHash } = await import('node:crypto');
	
	const hash = createHash('sha256');
	
	const input = createReadStream('test.js');
	input.pipe(hash).setEncoding('hex').pipe(stdout);
	```
	
	Example: Using the `hash.update()` and `hash.digest()` methods:
	
	```js
	const {
	  createHash,
	} = await import('node:crypto');
	
	const hash = createHash('sha256');
	
	hash.update('some data to hash');
	console.log(hash.digest('hex'));
	// Prints:
	//   6a2da20943931e9834fc12cfe5bb47bbd9ae43489a30726962b576f4e3993e50
	```
**/
@:jsRequire("crypto", "Hash") extern class Hash extends node.stream.stream.Transform {
	private function new();
	/**
		Creates a new `Hash` object that contains a deep copy of the internal state
		of the current `Hash` object.
		
		The optional `options` argument controls stream behavior. For XOF hash
		functions such as `'shake256'`, the `outputLength` option can be used to
		specify the desired output length in bytes.
		
		An error is thrown when an attempt is made to copy the `Hash` object after
		its `hash.digest()` method has been called.
		
		```js
		// Calculate a rolling hash.
		const {
		  createHash,
		} = await import('node:crypto');
		
		const hash = createHash('sha256');
		
		hash.update('one');
		console.log(hash.copy().digest('hex'));
		
		hash.update('two');
		console.log(hash.copy().digest('hex'));
		
		hash.update('three');
		console.log(hash.copy().digest('hex'));
		
		// Etc.
		```
	**/
	function copy(?options:HashOptions):Hash;
	/**
		Updates the hash content with the given `data`, the encoding of which
		is given in `inputEncoding`.
		If `encoding` is not provided, and the `data` is a string, an
		encoding of `'utf8'` is enforced. If `data` is a `Buffer`, `TypedArray`, or`DataView`, then `inputEncoding` is ignored.
		
		This can be called many times with new data as it is streamed.
	**/
	@:overload(function(data:String, inputEncoding:Encoding):Hash { })
	function update(data:BinaryLike):Hash;
	/**
		Calculates the digest of all of the data passed to be hashed (using the `hash.update()` method).
		If `encoding` is provided a string will be returned; otherwise
		a `Buffer` is returned.
		
		The `Hash` object can not be used again after `hash.digest()` method has been
		called. Multiple calls will cause an error to be thrown.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function digest():node.buffer.NonSharedBuffer;
	/**
		Event emitter
		The defined events on documents including:
		1.  close
		2.  data
		3.  drain
		4.  end
		5.  error
		6.  finish
		7.  pause
		8.  pipe
		9.  readable
		10. resume
		11. unpipe
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function addListener(event:String, listener:() -> Void):Hash;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function on(event:String, listener:() -> Void):Hash;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function once(event:String, listener:() -> Void):Hash;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function prependListener(event:String, listener:() -> Void):Hash;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function prependOnceListener(event:String, listener:() -> Void):Hash;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function removeListener(event:String, listener:() -> Void):Hash;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Hash;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Hash;
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
	function setEncoding(encoding:global.nodejs.BufferEncoding):Hash;
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
	function pause():Hash;
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
	function resume():Hash;
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
	function unpipe(?destination:global.nodejs.WritableStream):Hash;
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
	function wrap(stream:global.nodejs.ReadableStream):Hash;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the readable
		stream will release any internal resources and subsequent calls to `push()` will be ignored.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method, but instead implement `readable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):Hash;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):Hash;
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
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Hash { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):Hash { })
	function end(?cb:() -> Void):Hash;
	static var prototype : Hash;
}