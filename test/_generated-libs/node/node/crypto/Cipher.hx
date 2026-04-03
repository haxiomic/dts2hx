package node.crypto;

/**
	Instances of the `Cipher` class are used to encrypt data. The class can be
	used in one of two ways:
	
	* As a `stream` that is both readable and writable, where plain unencrypted
	data is written to produce encrypted data on the readable side, or
	* Using the `cipher.update()` and `cipher.final()` methods to produce
	the encrypted data.
	
	The
	{@link
	createCipher
	}
	or
	{@link
	createCipheriv
	}
	methods are
	used to create `Cipher` instances. `Cipher` objects are not to be created
	directly using the `new` keyword.
	
	Example: Using `Cipher` objects as streams:
	
	```js
	const {
	  scrypt,
	  randomFill,
	  createCipheriv,
	} = await import('node:crypto');
	
	const algorithm = 'aes-192-cbc';
	const password = 'Password used to generate key';
	
	// First, we'll generate the key. The key length is dependent on the algorithm.
	// In this case for aes192, it is 24 bytes (192 bits).
	scrypt(password, 'salt', 24, (err, key) => {
	  if (err) throw err;
	  // Then, we'll generate a random initialization vector
	  randomFill(new Uint8Array(16), (err, iv) => {
	    if (err) throw err;
	
	    // Once we have the key and iv, we can create and use the cipher...
	    const cipher = createCipheriv(algorithm, key, iv);
	
	    let encrypted = '';
	    cipher.setEncoding('hex');
	
	    cipher.on('data', (chunk) => encrypted += chunk);
	    cipher.on('end', () => console.log(encrypted));
	
	    cipher.write('some clear text data');
	    cipher.end();
	  });
	});
	```
	
	Example: Using `Cipher` and piped streams:
	
	```js
	import {
	  createReadStream,
	  createWriteStream,
	} from 'node:fs';
	
	import {
	  pipeline,
	} from 'node:stream';
	
	const {
	  scrypt,
	  randomFill,
	  createCipheriv,
	} = await import('node:crypto');
	
	const algorithm = 'aes-192-cbc';
	const password = 'Password used to generate key';
	
	// First, we'll generate the key. The key length is dependent on the algorithm.
	// In this case for aes192, it is 24 bytes (192 bits).
	scrypt(password, 'salt', 24, (err, key) => {
	  if (err) throw err;
	  // Then, we'll generate a random initialization vector
	  randomFill(new Uint8Array(16), (err, iv) => {
	    if (err) throw err;
	
	    const cipher = createCipheriv(algorithm, key, iv);
	
	    const input = createReadStream('test.js');
	    const output = createWriteStream('test.enc');
	
	    pipeline(input, cipher, output, (err) => {
	      if (err) throw err;
	    });
	  });
	});
	```
	
	Example: Using the `cipher.update()` and `cipher.final()` methods:
	
	```js
	const {
	  scrypt,
	  randomFill,
	  createCipheriv,
	} = await import('node:crypto');
	
	const algorithm = 'aes-192-cbc';
	const password = 'Password used to generate key';
	
	// First, we'll generate the key. The key length is dependent on the algorithm.
	// In this case for aes192, it is 24 bytes (192 bits).
	scrypt(password, 'salt', 24, (err, key) => {
	  if (err) throw err;
	  // Then, we'll generate a random initialization vector
	  randomFill(new Uint8Array(16), (err, iv) => {
	    if (err) throw err;
	
	    const cipher = createCipheriv(algorithm, key, iv);
	
	    let encrypted = cipher.update('some clear text data', 'utf8', 'hex');
	    encrypted += cipher.final('hex');
	    console.log(encrypted);
	  });
	});
	```
**/
@:jsRequire("crypto", "Cipher") extern class Cipher extends node.stream.stream.Transform {
	private function new();
	/**
		Updates the cipher with `data`. If the `inputEncoding` argument is given,
		the `data`argument is a string using the specified encoding. If the `inputEncoding`argument is not given, `data` must be a `Buffer`, `TypedArray`, or `DataView`. If `data` is a `Buffer`,
		`TypedArray`, or `DataView`, then `inputEncoding` is ignored.
		
		The `outputEncoding` specifies the output format of the enciphered
		data. If the `outputEncoding`is specified, a string using the specified encoding is returned. If no`outputEncoding` is provided, a `Buffer` is returned.
		
		The `cipher.update()` method can be called multiple times with new data until `cipher.final()` is called. Calling `cipher.update()` after `cipher.final()` will result in an error being
		thrown.
	**/
	@:overload(function(data:String, inputEncoding:Encoding):node.buffer.NonSharedBuffer { })
	@:overload(function(data:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, inputEncoding:Null<Any>, outputEncoding:Encoding):String { })
	@:overload(function(data:String, inputEncoding:Null<Encoding>, outputEncoding:Encoding):String { })
	function update(data:BinaryLike):node.buffer.NonSharedBuffer;
	/**
		Once the `cipher.final()` method has been called, the `Cipher` object can no
		longer be used to encrypt data. Attempts to call `cipher.final()` more than
		once will result in an error being thrown.
	**/
	@:native("final")
	@:overload(function(outputEncoding:global.nodejs.BufferEncoding):String { })
	function final_():node.buffer.NonSharedBuffer;
	/**
		When using block encryption algorithms, the `Cipher` class will automatically
		add padding to the input data to the appropriate block size. To disable the
		default padding call `cipher.setAutoPadding(false)`.
		
		When `autoPadding` is `false`, the length of the entire input data must be a
		multiple of the cipher's block size or `cipher.final()` will throw an error.
		Disabling automatic padding is useful for non-standard padding, for instance
		using `0x0` instead of PKCS padding.
		
		The `cipher.setAutoPadding()` method must be called before `cipher.final()`.
	**/
	function setAutoPadding(?autoPadding:Bool):Cipher;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function addListener(event:String, listener:() -> Void):Cipher;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function on(event:String, listener:() -> Void):Cipher;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function once(event:String, listener:() -> Void):Cipher;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function prependListener(event:String, listener:() -> Void):Cipher;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function prependOnceListener(event:String, listener:() -> Void):Cipher;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function removeListener(event:String, listener:() -> Void):Cipher;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Cipher;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Cipher;
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
	function setEncoding(encoding:global.nodejs.BufferEncoding):Cipher;
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
	function pause():Cipher;
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
	function resume():Cipher;
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
	function unpipe(?destination:global.nodejs.WritableStream):Cipher;
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
	function wrap(stream:global.nodejs.ReadableStream):Cipher;
	/**
		Destroy the stream. Optionally emit an `'error'` event, and emit a `'close'` event (unless `emitClose` is set to `false`). After this call, the readable
		stream will release any internal resources and subsequent calls to `push()` will be ignored.
		
		Once `destroy()` has been called any further calls will be a no-op and no
		further errors except from `_destroy()` may be emitted as `'error'`.
		
		Implementors should not override this method, but instead implement `readable._destroy()`.
	**/
	function destroy(?error:js.lib.Error):Cipher;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):Cipher;
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
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Cipher { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):Cipher { })
	function end(?cb:() -> Void):Cipher;
	static var prototype : Cipher;
}