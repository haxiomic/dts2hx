package node;

@:jsRequire("stream") extern class Stream extends Events<Stream> {
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function compose<T:(global.nodejs.ReadableStream)>(stream:ts.AnyOf4<Stream, T, Iterable<T>, js.lib.AsyncIterable<T, Dynamic, Dynamic>>, ?options:{ var signal : js.html.AbortSignal; }):T;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Stream;
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
	function on<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Stream;
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
	function once<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Stream;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Stream;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Stream;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Stream;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Stream;
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
	function prependListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Stream;
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
	function prependOnceListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Stream;
	static var prototype : Stream;
	/**
		The utility function `duplexPair` returns an Array with two items,
		each being a `Duplex` stream connected to the other side:
		
		```js
		const [ sideA, sideB ] = duplexPair();
		```
		
		Whatever is written to one stream is made readable on the other. It provides
		behavior analogous to a network connection, where the data written by the client
		becomes readable by the server, and vice-versa.
		
		The Duplex streams are symmetrical; one or the other may be used without any
		difference in behavior.
	**/
	static function duplexPair(?options:node.stream.stream.DuplexOptions<node.stream.stream.Duplex>):ts.Tuple2<node.stream.stream.Duplex, node.stream.stream.Duplex>;
	/**
		A stream to attach a signal to.
		
		Attaches an AbortSignal to a readable or writeable stream. This lets code
		control stream destruction using an `AbortController`.
		
		Calling `abort` on the `AbortController` corresponding to the passed `AbortSignal` will behave the same way as calling `.destroy(new AbortError())` on the
		stream, and `controller.error(new AbortError())` for webstreams.
		
		```js
		import fs from 'node:fs';
		
		const controller = new AbortController();
		const read = addAbortSignal(
		  controller.signal,
		  fs.createReadStream(('object.json')),
		);
		// Later, abort the operation closing the stream
		controller.abort();
		```
		
		Or using an `AbortSignal` with a readable stream as an async iterable:
		
		```js
		const controller = new AbortController();
		setTimeout(() => controller.abort(), 10_000); // set a timeout
		const stream = addAbortSignal(
		  controller.signal,
		  fs.createReadStream(('object.json')),
		);
		(async () => {
		  try {
		    for await (const chunk of stream) {
		      await process(chunk);
		    }
		  } catch (e) {
		    if (e.name === 'AbortError') {
		      // The operation was cancelled
		    } else {
		      throw e;
		    }
		  }
		})();
		```
		
		Or using an `AbortSignal` with a ReadableStream:
		
		```js
		const controller = new AbortController();
		const rs = new ReadableStream({
		  start(controller) {
		    controller.enqueue('hello');
		    controller.enqueue('world');
		    controller.close();
		  },
		});
		
		addAbortSignal(controller.signal, rs);
		
		finished(rs, (err) => {
		  if (err) {
		    if (err.name === 'AbortError') {
		      // The operation was cancelled
		    }
		  }
		});
		
		const reader = rs.getReader();
		
		reader.read().then(({ value, done }) => {
		  console.log(value); // hello
		  console.log(done); // false
		  controller.abort();
		});
		```
	**/
	static function addAbortSignal<T:(Stream)>(signal:js.html.AbortSignal, stream:T):T;
	/**
		Returns the default highWaterMark used by streams.
		Defaults to `16384` (16 KiB), or `16` for `objectMode`.
	**/
	static function getDefaultHighWaterMark(objectMode:Bool):Float;
	/**
		Sets the default highWaterMark used by streams.
	**/
	static function setDefaultHighWaterMark(objectMode:Bool, value:Float):Void;
	/**
		A readable and/or writable stream/webstream.
		
		A function to get notified when a stream is no longer readable, writable
		or has experienced an error or a premature close event.
		
		```js
		import { finished } from 'node:stream';
		import fs from 'node:fs';
		
		const rs = fs.createReadStream('archive.tar');
		
		finished(rs, (err) => {
		  if (err) {
		    console.error('Stream failed.', err);
		  } else {
		    console.log('Stream is done reading.');
		  }
		});
		
		rs.resume(); // Drain the stream.
		```
		
		Especially useful in error handling scenarios where a stream is destroyed
		prematurely (like an aborted HTTP request), and will not emit `'end'` or `'finish'`.
		
		The `finished` API provides [`promise version`](https://nodejs.org/docs/latest-v20.x/api/stream.html#streamfinishedstream-options).
		
		`stream.finished()` leaves dangling event listeners (in particular `'error'`, `'end'`, `'finish'` and `'close'`) after `callback` has been
		invoked. The reason for this is so that unexpected `'error'` events (due to
		incorrect stream implementations) do not cause unexpected crashes.
		If this is unwanted behavior then the returned cleanup function needs to be
		invoked in the callback:
		
		```js
		const cleanup = finished(rs, (err) => {
		  cleanup();
		  // ...
		});
		```
	**/
	@:overload(function(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void { })
	static function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
	/**
		A module method to pipe between streams and generators forwarding errors and
		properly cleaning up and provide a callback when the pipeline is complete.
		
		```js
		import { pipeline } from 'node:stream';
		import fs from 'node:fs';
		import zlib from 'node:zlib';
		
		// Use the pipeline API to easily pipe a series of streams
		// together and get notified when the pipeline is fully done.
		
		// A pipeline to gzip a potentially huge tar file efficiently:
		
		pipeline(
		  fs.createReadStream('archive.tar'),
		  zlib.createGzip(),
		  fs.createWriteStream('archive.tar.gz'),
		  (err) => {
		    if (err) {
		      console.error('Pipeline failed.', err);
		    } else {
		      console.log('Pipeline succeeded.');
		    }
		  },
		);
		```
		
		The `pipeline` API provides a [`promise version`](https://nodejs.org/docs/latest-v20.x/api/stream.html#streampipelinesource-transforms-destination-options).
		
		`stream.pipeline()` will call `stream.destroy(err)` on all streams except:
		
		* `Readable` streams which have emitted `'end'` or `'close'`.
		* `Writable` streams which have emitted `'finish'` or `'close'`.
		
		`stream.pipeline()` leaves dangling event listeners on the streams
		after the `callback` has been invoked. In the case of reuse of streams after
		failure, this can cause event listener leaks and swallowed errors. If the last
		stream is readable, dangling event listeners will be removed so that the last
		stream can be consumed later.
		
		`stream.pipeline()` closes all the streams when an error is raised.
		The `IncomingRequest` usage with `pipeline` could lead to an unexpected behavior
		once it would destroy the socket without sending the expected response.
		See the example below:
		
		```js
		import fs from 'node:fs';
		import http from 'node:http';
		import { pipeline } from 'node:stream';
		
		const server = http.createServer((req, res) => {
		  const fileStream = fs.createReadStream('./fileNotExist.txt');
		  pipeline(fileStream, res, (err) => {
		    if (err) {
		      console.log(err); // No such file
		      // this message can't be sent once `pipeline` already destroyed the socket
		      return res.end('error!!!');
		    }
		  });
		});
		```
	**/
	@:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { })
	@:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { })
	@:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), T3:(node.stream.stream.PipelineTransform<T2, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { })
	@:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), T3:(node.stream.stream.PipelineTransform<T2, Dynamic>), T4:(node.stream.stream.PipelineTransform<T3, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { })
	@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>>, callback:(err:Null<global.nodejs.ErrnoException>) -> Void):global.nodejs.WritableStream { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:Null<global.nodejs.ErrnoException>) -> Void>>):global.nodejs.WritableStream { })
	static function pipeline<A:(node.stream.stream.PipelineSource<Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic;
	/**
		Returns whether the stream has encountered an error.
	**/
	static function isErrored(stream:ts.AnyOf4<node.stream.stream.Readable, global.nodejs.ReadableStream, global.nodejs.WritableStream, node.stream.stream.Writable>):Bool;
	/**
		Returns whether the stream is readable.
	**/
	static function isReadable(stream:ts.AnyOf2<node.stream.stream.Readable, global.nodejs.ReadableStream>):Bool;
}