package node.crypto;

/**
	The `Verify` class is a utility for verifying signatures. It can be used in one
	of two ways:
	
	* As a writable `stream` where written data is used to validate against the
	supplied signature, or
	* Using the `verify.update()` and `verify.verify()` methods to verify
	the signature.
	
	The
	{@link
	createVerify
	}
	method is used to create `Verify` instances. `Verify` objects are not to be created directly using the `new` keyword.
	
	See `Sign` for examples.
**/
@:jsRequire("crypto", "Verify") extern class Verify extends node.stream.stream.Writable {
	private function new();
	/**
		Updates the `Verify` content with the given `data`, the encoding of which
		is given in `inputEncoding`.
		If `inputEncoding` is not provided, and the `data` is a string, an
		encoding of `'utf8'` is enforced. If `data` is a `Buffer`, `TypedArray`, or `DataView`, then `inputEncoding` is ignored.
		
		This can be called many times with new data as it is streamed.
	**/
	@:overload(function(data:String, inputEncoding:Encoding):Verify { })
	function update(data:BinaryLike):Verify;
	/**
		Verifies the provided data using the given `object` and `signature`.
		
		If `object` is not a `KeyObject`, this function behaves as if `object` had been passed to
		{@link
		createPublicKey
		}
		. If it is an
		object, the following additional properties can be passed:
		
		The `signature` argument is the previously calculated signature for the data, in
		the `signatureEncoding`.
		If a `signatureEncoding` is specified, the `signature` is expected to be a
		string; otherwise `signature` is expected to be a `Buffer`, `TypedArray`, or `DataView`.
		
		The `verify` object can not be used again after `verify.verify()` has been
		called. Multiple calls to `verify.verify()` will result in an error being
		thrown.
		
		Because public keys can be derived from private keys, a private key may
		be passed instead of a public key.
	**/
	@:overload(function(object:ts.AnyOf6<String, KeyObject, VerifyPublicKeyInput, VerifyKeyObjectInput, VerifyJsonWebKeyInput, node.buffer.Buffer<js.lib.ArrayBufferLike>>, signature:String, ?signature_format:BinaryToTextEncoding):Bool { })
	function verify(object:ts.AnyOf6<String, KeyObject, VerifyPublicKeyInput, VerifyKeyObjectInput, VerifyJsonWebKeyInput, node.buffer.Buffer<js.lib.ArrayBufferLike>>, signature:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>):Bool;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.nodejs.BufferEncoding):Verify;
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
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Verify { })
	@:overload(function(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, ?cb:() -> Void):Verify { })
	function end(?cb:() -> Void):Verify;
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
	function destroy(?error:js.lib.Error):Verify;
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
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function addListener(event:String, listener:() -> Void):Verify;
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
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function on(event:String, listener:() -> Void):Verify;
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
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function once(event:String, listener:() -> Void):Verify;
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
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function prependListener(event:String, listener:() -> Void):Verify;
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
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function prependOnceListener(event:String, listener:() -> Void):Verify;
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
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function removeListener(event:String, listener:() -> Void):Verify;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Verify;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Verify;
	static var prototype : Verify;
}