package node.crypto;

/**
	The `Sign` class is a utility for generating signatures. It can be used in one
	of two ways:
	
	* As a writable `stream`, where data to be signed is written and the `sign.sign()` method is used to generate and return the signature, or
	* Using the `sign.update()` and `sign.sign()` methods to produce the
	signature.
	
	The
	{@link
	createSign
	}
	method is used to create `Sign` instances. The
	argument is the string name of the hash function to use. `Sign` objects are not
	to be created directly using the `new` keyword.
	
	Example: Using `Sign` and `Verify` objects as streams:
	
	```js
	const {
	  generateKeyPairSync,
	  createSign,
	  createVerify,
	} = await import('node:crypto');
	
	const { privateKey, publicKey } = generateKeyPairSync('ec', {
	  namedCurve: 'sect239k1',
	});
	
	const sign = createSign('SHA256');
	sign.write('some data to sign');
	sign.end();
	const signature = sign.sign(privateKey, 'hex');
	
	const verify = createVerify('SHA256');
	verify.write('some data to sign');
	verify.end();
	console.log(verify.verify(publicKey, signature, 'hex'));
	// Prints: true
	```
	
	Example: Using the `sign.update()` and `verify.update()` methods:
	
	```js
	const {
	  generateKeyPairSync,
	  createSign,
	  createVerify,
	} = await import('node:crypto');
	
	const { privateKey, publicKey } = generateKeyPairSync('rsa', {
	  modulusLength: 2048,
	});
	
	const sign = createSign('SHA256');
	sign.update('some data to sign');
	sign.end();
	const signature = sign.sign(privateKey);
	
	const verify = createVerify('SHA256');
	verify.update('some data to sign');
	verify.end();
	console.log(verify.verify(publicKey, signature));
	// Prints: true
	```
**/
@:jsRequire("crypto", "Sign") extern class Sign extends node.stream.stream.Writable {
	private function new();
	/**
		Updates the `Sign` content with the given `data`, the encoding of which
		is given in `inputEncoding`.
		If `encoding` is not provided, and the `data` is a string, an
		encoding of `'utf8'` is enforced. If `data` is a `Buffer`, `TypedArray`, or`DataView`, then `inputEncoding` is ignored.
		
		This can be called many times with new data as it is streamed.
	**/
	@:overload(function(data:String, inputEncoding:Encoding):Sign { })
	function update(data:BinaryLike):Sign;
	/**
		Calculates the signature on all the data passed through using either `sign.update()` or `sign.write()`.
		
		If `privateKey` is not a `KeyObject`, this function behaves as if `privateKey` had been passed to
		{@link
		createPrivateKey
		}
		. If it is an
		object, the following additional properties can be passed:
		
		If `outputEncoding` is provided a string is returned; otherwise a `Buffer` is returned.
		
		The `Sign` object can not be again used after `sign.sign()` method has been
		called. Multiple calls to `sign.sign()` will result in an error being thrown.
	**/
	@:overload(function(privateKey:ts.AnyOf6<String, KeyObject, SignPrivateKeyInput, SignKeyObjectInput, SignJsonWebKeyInput, node.buffer.Buffer<js.lib.ArrayBufferLike>>, outputFormat:BinaryToTextEncoding):String { })
	function sign(privateKey:ts.AnyOf6<String, KeyObject, SignPrivateKeyInput, SignKeyObjectInput, SignJsonWebKeyInput, node.buffer.Buffer<js.lib.ArrayBufferLike>>):node.buffer.NonSharedBuffer;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):Sign;
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
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Sign { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):Sign { })
	function end(?cb:() -> Void):Sign;
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
	function destroy(?error:js.lib.Error):Sign;
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
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Sign { })
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Sign { })
	function addListener(event:String, listener:() -> Void):Sign;
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
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Sign { })
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Sign { })
	function on(event:String, listener:() -> Void):Sign;
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
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Sign { })
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Sign { })
	function once(event:String, listener:() -> Void):Sign;
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
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Sign { })
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Sign { })
	function prependListener(event:String, listener:() -> Void):Sign;
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
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Sign { })
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Sign { })
	function prependOnceListener(event:String, listener:() -> Void):Sign;
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
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Sign { })
	@:overload(function(event:String, listener:() -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Sign { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Sign { })
	function removeListener(event:String, listener:() -> Void):Sign;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Sign;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Sign;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Sign;
	static var prototype : Sign;
}