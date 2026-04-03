package node;

/**
	To use the HTTP server and client one must import the `node:http` module.
	
	The HTTP interfaces in Node.js are designed to support many features
	of the protocol which have been traditionally difficult to use.
	In particular, large, possibly chunk-encoded, messages. The interface is
	careful to never buffer entire requests or responses, so the
	user is able to stream data.
	
	HTTP message headers are represented by an object like this:
	
	```json
	{ "content-length": "123",
	  "content-type": "text/plain",
	  "connection": "keep-alive",
	  "host": "example.com",
	  "accept": "*" }
	```
	
	Keys are lowercased. Values are not modified.
	
	In order to support the full spectrum of possible HTTP applications, the Node.js
	HTTP API is very low-level. It deals with stream handling and message
	parsing only. It parses a message into headers and body but it does not
	parse the actual headers or the body.
	
	See `message.headers` for details on how duplicate headers are handled.
	
	The raw headers as they were received are retained in the `rawHeaders` property, which is an array of `[key, value, key2, value2, ...]`. For
	example, the previous message header object might have a `rawHeaders` list like the following:
	
	```js
	[ 'ConTent-Length', '123456',
	  'content-LENGTH', '123',
	  'content-type', 'text/plain',
	  'CONNECTION', 'keep-alive',
	  'Host', 'example.com',
	  'accepT', '*' ]
	```
**/
@:jsRequire("http") @valueModuleOnly extern class Http {
	/**
		Returns a new instance of
		{@link
		Server
		}
		.
		
		The `requestListener` is a function which is automatically
		added to the `'request'` event.
		
		```js
		import http from 'node:http';
		
		// Create a local server to receive data from
		const server = http.createServer((req, res) => {
		  res.writeHead(200, { 'Content-Type': 'application/json' });
		  res.end(JSON.stringify({
		    data: 'Hello World!',
		  }));
		});
		
		server.listen(8000);
		```
		
		```js
		import http from 'node:http';
		
		// Create a local server to receive data from
		const server = http.createServer();
		
		// Listen to the request event
		server.on('request', (request, res) => {
		  res.writeHead(200, { 'Content-Type': 'application/json' });
		  res.end(JSON.stringify({
		    data: 'Hello World!',
		  }));
		});
		
		server.listen(8000);
		```
	**/
	@:overload(function<Request:({
		var prototype : node.http.IncomingMessage;
		/**
			A utility method for creating Readable Streams out of iterators.
		**/
		function from(iterable:ts.AnyOf2<Iterable<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>, ?options:node.stream.stream.ReadableOptions<node.stream.stream.Readable>):node.stream.stream.Readable;
		/**
			A utility method for creating a `Readable` from a web `ReadableStream`.
		**/
		function fromWeb(readableStream:node.stream.web.ReadableStream<Dynamic>, ?options:{ /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; @:optional var encoding : global.nodejs.BufferEncoding; @:optional var highWaterMark : Float; @:optional var objectMode : Bool; }):node.stream.stream.Readable;
		/**
			A utility method for creating a web `ReadableStream` from a `Readable`.
		**/
		function toWeb(streamReadable:node.stream.stream.Readable, ?options:{ @:optional var strategy : node.stream.web.QueuingStrategy<Dynamic>; }):node.stream.web.ReadableStream<Dynamic>;
		/**
			Returns whether the stream has been read from or cancelled.
		**/
		function isDisturbed(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool;
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
		function duplexPair(?options:node.stream.stream.DuplexOptions<node.stream.stream.Duplex>):ts.Tuple2<node.stream.stream.Duplex, node.stream.stream.Duplex>;
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
		function addAbortSignal<T:(Stream)>(signal:js.html.AbortSignal, stream:T):T;
		/**
			Returns the default highWaterMark used by streams.
			Defaults to `16384` (16 KiB), or `16` for `objectMode`.
		**/
		function getDefaultHighWaterMark(objectMode:Bool):Float;
		/**
			Sets the default highWaterMark used by streams.
		**/
		function setDefaultHighWaterMark(objectMode:Bool, value:Float):Void;
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
		function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
		function pipeline<A:(node.stream.stream.PipelineSource<Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic;
		/**
			Returns whether the stream has encountered an error.
		**/
		function isErrored(stream:ts.AnyOf4<global.nodejs.ReadableStream, global.nodejs.WritableStream, node.stream.stream.Readable, node.stream.stream.Writable>):Bool;
		/**
			Returns whether the stream is readable.
		**/
		function isReadable(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool;
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			import { once, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			process.nextTick(() => {
			  ee.emit('myevent', 42);
			});
			
			const [value] = await once(ee, 'myevent');
			console.log(value);
			
			const err = new Error('kaboom');
			process.nextTick(() => {
			  ee.emit('error', err);
			});
			
			try {
			  await once(ee, 'myevent');
			} catch (err) {
			  console.error('error happened', err);
			}
			```
			
			The special handling of the `'error'` event is only used when `events.once()` is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			import { EventEmitter, once } from 'node:events';
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			  .then(([err]) => console.log('ok', err.message))
			  .catch((err) => console.error('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			import { EventEmitter, once } from 'node:events';
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			  try {
			    await once(emitter, event, { signal });
			    console.log('event emitted!');
			  } catch (error) {
			    if (error.name === 'AbortError') {
			      console.error('Waiting for the event was canceled!');
			    } else {
			      console.error('There was an error', error.message);
			    }
			  }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Http):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Http):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			// Emit later on
			process.nextTick(() => {
			  ee.emit('foo', 'bar');
			  ee.emit('foo', 42);
			});
			
			for await (const event of on(ee, 'foo')) {
			  // The execution of this inner block is synchronous and it
			  // processes one event at a time (even with await). Do not use
			  // if concurrent execution is required.
			  console.log(event); // prints ['bar'] [42]
			}
			// Unreachable here
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ac = new AbortController();
			
			(async () => {
			  const ee = new EventEmitter();
			
			  // Emit later on
			  process.nextTick(() => {
			    ee.emit('foo', 'bar');
			    ee.emit('foo', 42);
			  });
			
			  for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			    // The execution of this inner block is synchronous and it
			    // processes one event at a time (even with await). Do not use
			    // if concurrent execution is required.
			    console.log(event); // prints ['bar'] [42]
			  }
			  // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
			
			Use the `close` option to specify an array of event names that will end the iteration:
			
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			// Emit later on
			process.nextTick(() => {
			  ee.emit('foo', 'bar');
			  ee.emit('foo', 42);
			  ee.emit('close');
			});
			
			for await (const event of on(ee, 'foo', { close: ['close'] })) {
			  console.log(event); // prints ['bar'] [42]
			}
			// the loop will exit after 'close' is emitted
			console.log('done'); // prints 'done'
			```
		**/
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Http):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { })
		function on(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Http):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName` registered on the given `emitter`.
			
			```js
			import { EventEmitter, listenerCount } from 'node:events';
			
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			import { getEventListeners, EventEmitter } from 'node:events';
			
			{
			  const ee = new EventEmitter();
			  const listener = () => console.log('Events are fun');
			  ee.on('foo', listener);
			  console.log(getEventListeners(ee, 'foo')); // [ [Function: listener] ]
			}
			{
			  const et = new EventTarget();
			  const listener = () => console.log('Events are fun');
			  et.addEventListener('foo', listener);
			  console.log(getEventListeners(et, 'foo')); // [ [Function: listener] ]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			Returns the currently set max amount of listeners.
			
			For `EventEmitter`s this behaves exactly the same as calling `.getMaxListeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the max event listeners for the
			event target. If the number of event handlers on a single EventTarget exceeds
			the max set, the EventTarget will print a warning.
			
			```js
			import { getMaxListeners, setMaxListeners, EventEmitter } from 'node:events';
			
			{
			  const ee = new EventEmitter();
			  console.log(getMaxListeners(ee)); // 10
			  setMaxListeners(11, ee);
			  console.log(getMaxListeners(ee)); // 11
			}
			{
			  const et = new EventTarget();
			  console.log(getMaxListeners(et)); // 10
			  setMaxListeners(11, et);
			  console.log(getMaxListeners(et)); // 11
			}
			```
		**/
		function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>):Float;
		/**
			```js
			import { setMaxListeners, EventEmitter } from 'node:events';
			
			const target = new EventTarget();
			const emitter = new EventEmitter();
			
			setMaxListeners(5, target, emitter);
			```
		**/
		function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>>):Void;
		/**
			Listens once to the `abort` event on the provided `signal`.
			
			Listening to the `abort` event on abort signals is unsafe and may
			lead to resource leaks since another third party with the signal can
			call `e.stopImmediatePropagation()`. Unfortunately Node.js cannot change
			this since it would violate the web standard. Additionally, the original
			API makes it easy to forget to remove listeners.
			
			This API allows safely using `AbortSignal`s in Node.js APIs by solving these
			two issues by listening to the event such that `stopImmediatePropagation` does
			not prevent the listener from running.
			
			Returns a disposable so that it may be unsubscribed from more easily.
			
			```js
			import { addAbortListener } from 'node:events';
			
			function example(signal) {
			  let disposable;
			  try {
			    signal.addEventListener('abort', (e) => e.stopImmediatePropagation());
			    disposable = addAbortListener(signal, (e) => {
			      // Do something when signal is aborted.
			    });
			  } finally {
			    disposable?.[Symbol.dispose]();
			  }
			}
			```
		**/
		function addAbortListener(signal:js.html.AbortSignal, resource:(event:js.html.Event) -> Void):global.Disposable;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'` events. Listeners installed using this symbol are called before the regular `'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an `'error'` event is emitted. Therefore, the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		/**
			Value: `Symbol.for('nodejs.rejection')`
			
			See how to write a custom `rejection handler`.
		**/
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Value: [boolean](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Boolean_type)
			
			Change the default `captureRejections` option on all new `EventEmitter` objects.
		**/
		var captureRejections : Bool;
		/**
			By default, a maximum of `10` listeners can be registered for any single
			event. This limit can be changed for individual `EventEmitter` instances
			using the `emitter.setMaxListeners(n)` method. To change the default
			for _all_`EventEmitter` instances, the `events.defaultMaxListeners` property
			can be used. If this value is not a positive number, a `RangeError` is thrown.
			
			Take caution when setting the `events.defaultMaxListeners` because the
			change affects _all_ `EventEmitter` instances, including those created before
			the change is made. However, calling `emitter.setMaxListeners(n)` still has
			precedence over `events.defaultMaxListeners`.
			
			This is not a hard limit. The `EventEmitter` instance will allow
			more listeners to be added but will output a trace warning to stderr indicating
			that a "possible EventEmitter memory leak" has been detected. For any single
			`EventEmitter`, the `emitter.getMaxListeners()` and `emitter.setMaxListeners()` methods can be used to
			temporarily avoid this warning:
			
			```js
			import { EventEmitter } from 'node:events';
			const emitter = new EventEmitter();
			emitter.setMaxListeners(emitter.getMaxListeners() + 1);
			emitter.once('event', () => {
			  // do stuff
			  emitter.setMaxListeners(Math.max(emitter.getMaxListeners() - 1, 0));
			});
			```
			
			The `--trace-warnings` command-line flag can be used to display the
			stack trace for such warnings.
			
			The emitted warning can be inspected with `process.on('warning')` and will
			have the additional `emitter`, `type`, and `count` properties, referring to
			the event emitter instance, the event's name and the number of attached
			listeners, respectively.
			Its `name` property is set to `'MaxListenersExceededWarning'`.
		**/
		var defaultMaxListeners : Float;
	}), Response:({
		var prototype : node.http.ServerResponse<Dynamic>;
		/**
			A utility method for creating a `Writable` from a web `WritableStream`.
		**/
		function fromWeb(writableStream:node.stream.web.WritableStream<Dynamic>, ?options:{ /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; @:optional var highWaterMark : Float; @:optional var objectMode : Bool; @:optional var decodeStrings : Bool; }):node.stream.stream.Writable;
		/**
			A utility method for creating a web `WritableStream` from a `Writable`.
		**/
		function toWeb(streamWritable:node.stream.stream.Writable):node.stream.web.WritableStream<Dynamic>;
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
		function duplexPair(?options:node.stream.stream.DuplexOptions<node.stream.stream.Duplex>):ts.Tuple2<node.stream.stream.Duplex, node.stream.stream.Duplex>;
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
		function addAbortSignal<T:(Stream)>(signal:js.html.AbortSignal, stream:T):T;
		/**
			Returns the default highWaterMark used by streams.
			Defaults to `16384` (16 KiB), or `16` for `objectMode`.
		**/
		function getDefaultHighWaterMark(objectMode:Bool):Float;
		/**
			Sets the default highWaterMark used by streams.
		**/
		function setDefaultHighWaterMark(objectMode:Bool, value:Float):Void;
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
		function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
		function pipeline<A:(node.stream.stream.PipelineSource<Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic;
		/**
			Returns whether the stream has encountered an error.
		**/
		function isErrored(stream:ts.AnyOf4<global.nodejs.ReadableStream, global.nodejs.WritableStream, node.stream.stream.Readable, node.stream.stream.Writable>):Bool;
		/**
			Returns whether the stream is readable.
		**/
		function isReadable(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool;
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			import { once, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			process.nextTick(() => {
			  ee.emit('myevent', 42);
			});
			
			const [value] = await once(ee, 'myevent');
			console.log(value);
			
			const err = new Error('kaboom');
			process.nextTick(() => {
			  ee.emit('error', err);
			});
			
			try {
			  await once(ee, 'myevent');
			} catch (err) {
			  console.error('error happened', err);
			}
			```
			
			The special handling of the `'error'` event is only used when `events.once()` is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			import { EventEmitter, once } from 'node:events';
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			  .then(([err]) => console.log('ok', err.message))
			  .catch((err) => console.error('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			import { EventEmitter, once } from 'node:events';
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			  try {
			    await once(emitter, event, { signal });
			    console.log('event emitted!');
			  } catch (error) {
			    if (error.name === 'AbortError') {
			      console.error('Waiting for the event was canceled!');
			    } else {
			      console.error('There was an error', error.message);
			    }
			  }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Http):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Http):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			// Emit later on
			process.nextTick(() => {
			  ee.emit('foo', 'bar');
			  ee.emit('foo', 42);
			});
			
			for await (const event of on(ee, 'foo')) {
			  // The execution of this inner block is synchronous and it
			  // processes one event at a time (even with await). Do not use
			  // if concurrent execution is required.
			  console.log(event); // prints ['bar'] [42]
			}
			// Unreachable here
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ac = new AbortController();
			
			(async () => {
			  const ee = new EventEmitter();
			
			  // Emit later on
			  process.nextTick(() => {
			    ee.emit('foo', 'bar');
			    ee.emit('foo', 42);
			  });
			
			  for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			    // The execution of this inner block is synchronous and it
			    // processes one event at a time (even with await). Do not use
			    // if concurrent execution is required.
			    console.log(event); // prints ['bar'] [42]
			  }
			  // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
			
			Use the `close` option to specify an array of event names that will end the iteration:
			
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			// Emit later on
			process.nextTick(() => {
			  ee.emit('foo', 'bar');
			  ee.emit('foo', 42);
			  ee.emit('close');
			});
			
			for await (const event of on(ee, 'foo', { close: ['close'] })) {
			  console.log(event); // prints ['bar'] [42]
			}
			// the loop will exit after 'close' is emitted
			console.log('done'); // prints 'done'
			```
		**/
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Http):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { })
		function on(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Http):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName` registered on the given `emitter`.
			
			```js
			import { EventEmitter, listenerCount } from 'node:events';
			
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			import { getEventListeners, EventEmitter } from 'node:events';
			
			{
			  const ee = new EventEmitter();
			  const listener = () => console.log('Events are fun');
			  ee.on('foo', listener);
			  console.log(getEventListeners(ee, 'foo')); // [ [Function: listener] ]
			}
			{
			  const et = new EventTarget();
			  const listener = () => console.log('Events are fun');
			  et.addEventListener('foo', listener);
			  console.log(getEventListeners(et, 'foo')); // [ [Function: listener] ]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			Returns the currently set max amount of listeners.
			
			For `EventEmitter`s this behaves exactly the same as calling `.getMaxListeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the max event listeners for the
			event target. If the number of event handlers on a single EventTarget exceeds
			the max set, the EventTarget will print a warning.
			
			```js
			import { getMaxListeners, setMaxListeners, EventEmitter } from 'node:events';
			
			{
			  const ee = new EventEmitter();
			  console.log(getMaxListeners(ee)); // 10
			  setMaxListeners(11, ee);
			  console.log(getMaxListeners(ee)); // 11
			}
			{
			  const et = new EventTarget();
			  console.log(getMaxListeners(et)); // 10
			  setMaxListeners(11, et);
			  console.log(getMaxListeners(et)); // 11
			}
			```
		**/
		function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>):Float;
		/**
			```js
			import { setMaxListeners, EventEmitter } from 'node:events';
			
			const target = new EventTarget();
			const emitter = new EventEmitter();
			
			setMaxListeners(5, target, emitter);
			```
		**/
		function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>>):Void;
		/**
			Listens once to the `abort` event on the provided `signal`.
			
			Listening to the `abort` event on abort signals is unsafe and may
			lead to resource leaks since another third party with the signal can
			call `e.stopImmediatePropagation()`. Unfortunately Node.js cannot change
			this since it would violate the web standard. Additionally, the original
			API makes it easy to forget to remove listeners.
			
			This API allows safely using `AbortSignal`s in Node.js APIs by solving these
			two issues by listening to the event such that `stopImmediatePropagation` does
			not prevent the listener from running.
			
			Returns a disposable so that it may be unsubscribed from more easily.
			
			```js
			import { addAbortListener } from 'node:events';
			
			function example(signal) {
			  let disposable;
			  try {
			    signal.addEventListener('abort', (e) => e.stopImmediatePropagation());
			    disposable = addAbortListener(signal, (e) => {
			      // Do something when signal is aborted.
			    });
			  } finally {
			    disposable?.[Symbol.dispose]();
			  }
			}
			```
		**/
		function addAbortListener(signal:js.html.AbortSignal, resource:(event:js.html.Event) -> Void):global.Disposable;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'` events. Listeners installed using this symbol are called before the regular `'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an `'error'` event is emitted. Therefore, the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		/**
			Value: `Symbol.for('nodejs.rejection')`
			
			See how to write a custom `rejection handler`.
		**/
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Value: [boolean](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Boolean_type)
			
			Change the default `captureRejections` option on all new `EventEmitter` objects.
		**/
		var captureRejections : Bool;
		/**
			By default, a maximum of `10` listeners can be registered for any single
			event. This limit can be changed for individual `EventEmitter` instances
			using the `emitter.setMaxListeners(n)` method. To change the default
			for _all_`EventEmitter` instances, the `events.defaultMaxListeners` property
			can be used. If this value is not a positive number, a `RangeError` is thrown.
			
			Take caution when setting the `events.defaultMaxListeners` because the
			change affects _all_ `EventEmitter` instances, including those created before
			the change is made. However, calling `emitter.setMaxListeners(n)` still has
			precedence over `events.defaultMaxListeners`.
			
			This is not a hard limit. The `EventEmitter` instance will allow
			more listeners to be added but will output a trace warning to stderr indicating
			that a "possible EventEmitter memory leak" has been detected. For any single
			`EventEmitter`, the `emitter.getMaxListeners()` and `emitter.setMaxListeners()` methods can be used to
			temporarily avoid this warning:
			
			```js
			import { EventEmitter } from 'node:events';
			const emitter = new EventEmitter();
			emitter.setMaxListeners(emitter.getMaxListeners() + 1);
			emitter.once('event', () => {
			  // do stuff
			  emitter.setMaxListeners(Math.max(emitter.getMaxListeners() - 1, 0));
			});
			```
			
			The `--trace-warnings` command-line flag can be used to display the
			stack trace for such warnings.
			
			The emitted warning can be inspected with `process.on('warning')` and will
			have the additional `emitter`, `type`, and `count` properties, referring to
			the event emitter instance, the event's name and the number of attached
			listeners, respectively.
			Its `name` property is set to `'MaxListenersExceededWarning'`.
		**/
		var defaultMaxListeners : Float;
	})>(options:node.http.ServerOptions<Request, Response>, ?requestListener:node.http.RequestListener<Request, Response>):node.http.Server<Request, Response> { })
	static function createServer<Request:({
		var prototype : node.http.IncomingMessage;
		/**
			A utility method for creating Readable Streams out of iterators.
		**/
		function from(iterable:ts.AnyOf2<Iterable<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>, ?options:node.stream.stream.ReadableOptions<node.stream.stream.Readable>):node.stream.stream.Readable;
		/**
			A utility method for creating a `Readable` from a web `ReadableStream`.
		**/
		function fromWeb(readableStream:node.stream.web.ReadableStream<Dynamic>, ?options:{ /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; @:optional var encoding : global.nodejs.BufferEncoding; @:optional var highWaterMark : Float; @:optional var objectMode : Bool; }):node.stream.stream.Readable;
		/**
			A utility method for creating a web `ReadableStream` from a `Readable`.
		**/
		function toWeb(streamReadable:node.stream.stream.Readable, ?options:{ @:optional var strategy : node.stream.web.QueuingStrategy<Dynamic>; }):node.stream.web.ReadableStream<Dynamic>;
		/**
			Returns whether the stream has been read from or cancelled.
		**/
		function isDisturbed(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool;
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
		function duplexPair(?options:node.stream.stream.DuplexOptions<node.stream.stream.Duplex>):ts.Tuple2<node.stream.stream.Duplex, node.stream.stream.Duplex>;
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
		function addAbortSignal<T:(Stream)>(signal:js.html.AbortSignal, stream:T):T;
		/**
			Returns the default highWaterMark used by streams.
			Defaults to `16384` (16 KiB), or `16` for `objectMode`.
		**/
		function getDefaultHighWaterMark(objectMode:Bool):Float;
		/**
			Sets the default highWaterMark used by streams.
		**/
		function setDefaultHighWaterMark(objectMode:Bool, value:Float):Void;
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
		function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
		function pipeline<A:(node.stream.stream.PipelineSource<Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic;
		/**
			Returns whether the stream has encountered an error.
		**/
		function isErrored(stream:ts.AnyOf4<global.nodejs.ReadableStream, global.nodejs.WritableStream, node.stream.stream.Readable, node.stream.stream.Writable>):Bool;
		/**
			Returns whether the stream is readable.
		**/
		function isReadable(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool;
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			import { once, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			process.nextTick(() => {
			  ee.emit('myevent', 42);
			});
			
			const [value] = await once(ee, 'myevent');
			console.log(value);
			
			const err = new Error('kaboom');
			process.nextTick(() => {
			  ee.emit('error', err);
			});
			
			try {
			  await once(ee, 'myevent');
			} catch (err) {
			  console.error('error happened', err);
			}
			```
			
			The special handling of the `'error'` event is only used when `events.once()` is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			import { EventEmitter, once } from 'node:events';
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			  .then(([err]) => console.log('ok', err.message))
			  .catch((err) => console.error('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			import { EventEmitter, once } from 'node:events';
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			  try {
			    await once(emitter, event, { signal });
			    console.log('event emitted!');
			  } catch (error) {
			    if (error.name === 'AbortError') {
			      console.error('Waiting for the event was canceled!');
			    } else {
			      console.error('There was an error', error.message);
			    }
			  }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Http):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Http):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			// Emit later on
			process.nextTick(() => {
			  ee.emit('foo', 'bar');
			  ee.emit('foo', 42);
			});
			
			for await (const event of on(ee, 'foo')) {
			  // The execution of this inner block is synchronous and it
			  // processes one event at a time (even with await). Do not use
			  // if concurrent execution is required.
			  console.log(event); // prints ['bar'] [42]
			}
			// Unreachable here
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ac = new AbortController();
			
			(async () => {
			  const ee = new EventEmitter();
			
			  // Emit later on
			  process.nextTick(() => {
			    ee.emit('foo', 'bar');
			    ee.emit('foo', 42);
			  });
			
			  for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			    // The execution of this inner block is synchronous and it
			    // processes one event at a time (even with await). Do not use
			    // if concurrent execution is required.
			    console.log(event); // prints ['bar'] [42]
			  }
			  // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
			
			Use the `close` option to specify an array of event names that will end the iteration:
			
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			// Emit later on
			process.nextTick(() => {
			  ee.emit('foo', 'bar');
			  ee.emit('foo', 42);
			  ee.emit('close');
			});
			
			for await (const event of on(ee, 'foo', { close: ['close'] })) {
			  console.log(event); // prints ['bar'] [42]
			}
			// the loop will exit after 'close' is emitted
			console.log('done'); // prints 'done'
			```
		**/
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Http):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { })
		function on(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Http):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName` registered on the given `emitter`.
			
			```js
			import { EventEmitter, listenerCount } from 'node:events';
			
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			import { getEventListeners, EventEmitter } from 'node:events';
			
			{
			  const ee = new EventEmitter();
			  const listener = () => console.log('Events are fun');
			  ee.on('foo', listener);
			  console.log(getEventListeners(ee, 'foo')); // [ [Function: listener] ]
			}
			{
			  const et = new EventTarget();
			  const listener = () => console.log('Events are fun');
			  et.addEventListener('foo', listener);
			  console.log(getEventListeners(et, 'foo')); // [ [Function: listener] ]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			Returns the currently set max amount of listeners.
			
			For `EventEmitter`s this behaves exactly the same as calling `.getMaxListeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the max event listeners for the
			event target. If the number of event handlers on a single EventTarget exceeds
			the max set, the EventTarget will print a warning.
			
			```js
			import { getMaxListeners, setMaxListeners, EventEmitter } from 'node:events';
			
			{
			  const ee = new EventEmitter();
			  console.log(getMaxListeners(ee)); // 10
			  setMaxListeners(11, ee);
			  console.log(getMaxListeners(ee)); // 11
			}
			{
			  const et = new EventTarget();
			  console.log(getMaxListeners(et)); // 10
			  setMaxListeners(11, et);
			  console.log(getMaxListeners(et)); // 11
			}
			```
		**/
		function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>):Float;
		/**
			```js
			import { setMaxListeners, EventEmitter } from 'node:events';
			
			const target = new EventTarget();
			const emitter = new EventEmitter();
			
			setMaxListeners(5, target, emitter);
			```
		**/
		function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>>):Void;
		/**
			Listens once to the `abort` event on the provided `signal`.
			
			Listening to the `abort` event on abort signals is unsafe and may
			lead to resource leaks since another third party with the signal can
			call `e.stopImmediatePropagation()`. Unfortunately Node.js cannot change
			this since it would violate the web standard. Additionally, the original
			API makes it easy to forget to remove listeners.
			
			This API allows safely using `AbortSignal`s in Node.js APIs by solving these
			two issues by listening to the event such that `stopImmediatePropagation` does
			not prevent the listener from running.
			
			Returns a disposable so that it may be unsubscribed from more easily.
			
			```js
			import { addAbortListener } from 'node:events';
			
			function example(signal) {
			  let disposable;
			  try {
			    signal.addEventListener('abort', (e) => e.stopImmediatePropagation());
			    disposable = addAbortListener(signal, (e) => {
			      // Do something when signal is aborted.
			    });
			  } finally {
			    disposable?.[Symbol.dispose]();
			  }
			}
			```
		**/
		function addAbortListener(signal:js.html.AbortSignal, resource:(event:js.html.Event) -> Void):global.Disposable;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'` events. Listeners installed using this symbol are called before the regular `'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an `'error'` event is emitted. Therefore, the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		/**
			Value: `Symbol.for('nodejs.rejection')`
			
			See how to write a custom `rejection handler`.
		**/
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Value: [boolean](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Boolean_type)
			
			Change the default `captureRejections` option on all new `EventEmitter` objects.
		**/
		var captureRejections : Bool;
		/**
			By default, a maximum of `10` listeners can be registered for any single
			event. This limit can be changed for individual `EventEmitter` instances
			using the `emitter.setMaxListeners(n)` method. To change the default
			for _all_`EventEmitter` instances, the `events.defaultMaxListeners` property
			can be used. If this value is not a positive number, a `RangeError` is thrown.
			
			Take caution when setting the `events.defaultMaxListeners` because the
			change affects _all_ `EventEmitter` instances, including those created before
			the change is made. However, calling `emitter.setMaxListeners(n)` still has
			precedence over `events.defaultMaxListeners`.
			
			This is not a hard limit. The `EventEmitter` instance will allow
			more listeners to be added but will output a trace warning to stderr indicating
			that a "possible EventEmitter memory leak" has been detected. For any single
			`EventEmitter`, the `emitter.getMaxListeners()` and `emitter.setMaxListeners()` methods can be used to
			temporarily avoid this warning:
			
			```js
			import { EventEmitter } from 'node:events';
			const emitter = new EventEmitter();
			emitter.setMaxListeners(emitter.getMaxListeners() + 1);
			emitter.once('event', () => {
			  // do stuff
			  emitter.setMaxListeners(Math.max(emitter.getMaxListeners() - 1, 0));
			});
			```
			
			The `--trace-warnings` command-line flag can be used to display the
			stack trace for such warnings.
			
			The emitted warning can be inspected with `process.on('warning')` and will
			have the additional `emitter`, `type`, and `count` properties, referring to
			the event emitter instance, the event's name and the number of attached
			listeners, respectively.
			Its `name` property is set to `'MaxListenersExceededWarning'`.
		**/
		var defaultMaxListeners : Float;
	}), Response:({
		var prototype : node.http.ServerResponse<Dynamic>;
		/**
			A utility method for creating a `Writable` from a web `WritableStream`.
		**/
		function fromWeb(writableStream:node.stream.web.WritableStream<Dynamic>, ?options:{ /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; @:optional var highWaterMark : Float; @:optional var objectMode : Bool; @:optional var decodeStrings : Bool; }):node.stream.stream.Writable;
		/**
			A utility method for creating a web `WritableStream` from a `Writable`.
		**/
		function toWeb(streamWritable:node.stream.stream.Writable):node.stream.web.WritableStream<Dynamic>;
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
		function duplexPair(?options:node.stream.stream.DuplexOptions<node.stream.stream.Duplex>):ts.Tuple2<node.stream.stream.Duplex, node.stream.stream.Duplex>;
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
		function addAbortSignal<T:(Stream)>(signal:js.html.AbortSignal, stream:T):T;
		/**
			Returns the default highWaterMark used by streams.
			Defaults to `16384` (16 KiB), or `16` for `objectMode`.
		**/
		function getDefaultHighWaterMark(objectMode:Bool):Float;
		/**
			Sets the default highWaterMark used by streams.
		**/
		function setDefaultHighWaterMark(objectMode:Bool, value:Float):Void;
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
		function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
		function pipeline<A:(node.stream.stream.PipelineSource<Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic;
		/**
			Returns whether the stream has encountered an error.
		**/
		function isErrored(stream:ts.AnyOf4<global.nodejs.ReadableStream, global.nodejs.WritableStream, node.stream.stream.Readable, node.stream.stream.Writable>):Bool;
		/**
			Returns whether the stream is readable.
		**/
		function isReadable(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool;
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			import { once, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			process.nextTick(() => {
			  ee.emit('myevent', 42);
			});
			
			const [value] = await once(ee, 'myevent');
			console.log(value);
			
			const err = new Error('kaboom');
			process.nextTick(() => {
			  ee.emit('error', err);
			});
			
			try {
			  await once(ee, 'myevent');
			} catch (err) {
			  console.error('error happened', err);
			}
			```
			
			The special handling of the `'error'` event is only used when `events.once()` is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			import { EventEmitter, once } from 'node:events';
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			  .then(([err]) => console.log('ok', err.message))
			  .catch((err) => console.error('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			import { EventEmitter, once } from 'node:events';
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			  try {
			    await once(emitter, event, { signal });
			    console.log('event emitted!');
			  } catch (error) {
			    if (error.name === 'AbortError') {
			      console.error('Waiting for the event was canceled!');
			    } else {
			      console.error('There was an error', error.message);
			    }
			  }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Http):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Http):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			// Emit later on
			process.nextTick(() => {
			  ee.emit('foo', 'bar');
			  ee.emit('foo', 42);
			});
			
			for await (const event of on(ee, 'foo')) {
			  // The execution of this inner block is synchronous and it
			  // processes one event at a time (even with await). Do not use
			  // if concurrent execution is required.
			  console.log(event); // prints ['bar'] [42]
			}
			// Unreachable here
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ac = new AbortController();
			
			(async () => {
			  const ee = new EventEmitter();
			
			  // Emit later on
			  process.nextTick(() => {
			    ee.emit('foo', 'bar');
			    ee.emit('foo', 42);
			  });
			
			  for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			    // The execution of this inner block is synchronous and it
			    // processes one event at a time (even with await). Do not use
			    // if concurrent execution is required.
			    console.log(event); // prints ['bar'] [42]
			  }
			  // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
			
			Use the `close` option to specify an array of event names that will end the iteration:
			
			```js
			import { on, EventEmitter } from 'node:events';
			import process from 'node:process';
			
			const ee = new EventEmitter();
			
			// Emit later on
			process.nextTick(() => {
			  ee.emit('foo', 'bar');
			  ee.emit('foo', 42);
			  ee.emit('close');
			});
			
			for await (const event of on(ee, 'foo', { close: ['close'] })) {
			  console.log(event); // prints ['bar'] [42]
			}
			// the loop will exit after 'close' is emitted
			console.log('done'); // prints 'done'
			```
		**/
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Http):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { })
		function on(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Http):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName` registered on the given `emitter`.
			
			```js
			import { EventEmitter, listenerCount } from 'node:events';
			
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter<Http>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			import { getEventListeners, EventEmitter } from 'node:events';
			
			{
			  const ee = new EventEmitter();
			  const listener = () => console.log('Events are fun');
			  ee.on('foo', listener);
			  console.log(getEventListeners(ee, 'foo')); // [ [Function: listener] ]
			}
			{
			  const et = new EventTarget();
			  const listener = () => console.log('Events are fun');
			  et.addEventListener('foo', listener);
			  console.log(getEventListeners(et, 'foo')); // [ [Function: listener] ]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			Returns the currently set max amount of listeners.
			
			For `EventEmitter`s this behaves exactly the same as calling `.getMaxListeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the max event listeners for the
			event target. If the number of event handlers on a single EventTarget exceeds
			the max set, the EventTarget will print a warning.
			
			```js
			import { getMaxListeners, setMaxListeners, EventEmitter } from 'node:events';
			
			{
			  const ee = new EventEmitter();
			  console.log(getMaxListeners(ee)); // 10
			  setMaxListeners(11, ee);
			  console.log(getMaxListeners(ee)); // 11
			}
			{
			  const et = new EventTarget();
			  console.log(getMaxListeners(et)); // 10
			  setMaxListeners(11, et);
			  console.log(getMaxListeners(et)); // 11
			}
			```
		**/
		function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>):Float;
		/**
			```js
			import { setMaxListeners, EventEmitter } from 'node:events';
			
			const target = new EventTarget();
			const emitter = new EventEmitter();
			
			setMaxListeners(5, target, emitter);
			```
		**/
		function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Http>>>):Void;
		/**
			Listens once to the `abort` event on the provided `signal`.
			
			Listening to the `abort` event on abort signals is unsafe and may
			lead to resource leaks since another third party with the signal can
			call `e.stopImmediatePropagation()`. Unfortunately Node.js cannot change
			this since it would violate the web standard. Additionally, the original
			API makes it easy to forget to remove listeners.
			
			This API allows safely using `AbortSignal`s in Node.js APIs by solving these
			two issues by listening to the event such that `stopImmediatePropagation` does
			not prevent the listener from running.
			
			Returns a disposable so that it may be unsubscribed from more easily.
			
			```js
			import { addAbortListener } from 'node:events';
			
			function example(signal) {
			  let disposable;
			  try {
			    signal.addEventListener('abort', (e) => e.stopImmediatePropagation());
			    disposable = addAbortListener(signal, (e) => {
			      // Do something when signal is aborted.
			    });
			  } finally {
			    disposable?.[Symbol.dispose]();
			  }
			}
			```
		**/
		function addAbortListener(signal:js.html.AbortSignal, resource:(event:js.html.Event) -> Void):global.Disposable;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'` events. Listeners installed using this symbol are called before the regular `'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an `'error'` event is emitted. Therefore, the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		/**
			Value: `Symbol.for('nodejs.rejection')`
			
			See how to write a custom `rejection handler`.
		**/
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Value: [boolean](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Boolean_type)
			
			Change the default `captureRejections` option on all new `EventEmitter` objects.
		**/
		var captureRejections : Bool;
		/**
			By default, a maximum of `10` listeners can be registered for any single
			event. This limit can be changed for individual `EventEmitter` instances
			using the `emitter.setMaxListeners(n)` method. To change the default
			for _all_`EventEmitter` instances, the `events.defaultMaxListeners` property
			can be used. If this value is not a positive number, a `RangeError` is thrown.
			
			Take caution when setting the `events.defaultMaxListeners` because the
			change affects _all_ `EventEmitter` instances, including those created before
			the change is made. However, calling `emitter.setMaxListeners(n)` still has
			precedence over `events.defaultMaxListeners`.
			
			This is not a hard limit. The `EventEmitter` instance will allow
			more listeners to be added but will output a trace warning to stderr indicating
			that a "possible EventEmitter memory leak" has been detected. For any single
			`EventEmitter`, the `emitter.getMaxListeners()` and `emitter.setMaxListeners()` methods can be used to
			temporarily avoid this warning:
			
			```js
			import { EventEmitter } from 'node:events';
			const emitter = new EventEmitter();
			emitter.setMaxListeners(emitter.getMaxListeners() + 1);
			emitter.once('event', () => {
			  // do stuff
			  emitter.setMaxListeners(Math.max(emitter.getMaxListeners() - 1, 0));
			});
			```
			
			The `--trace-warnings` command-line flag can be used to display the
			stack trace for such warnings.
			
			The emitted warning can be inspected with `process.on('warning')` and will
			have the additional `emitter`, `type`, and `count` properties, referring to
			the event emitter instance, the event's name and the number of attached
			listeners, respectively.
			Its `name` property is set to `'MaxListenersExceededWarning'`.
		**/
		var defaultMaxListeners : Float;
	})>(?requestListener:node.http.RequestListener<Request, Response>):node.http.Server<Request, Response>;
	/**
		`options` in `socket.connect()` are also supported.
		
		Node.js maintains several connections per server to make HTTP requests.
		This function allows one to transparently issue requests.
		
		`url` can be a string or a `URL` object. If `url` is a
		string, it is automatically parsed with `new URL()`. If it is a `URL` object, it will be automatically converted to an ordinary `options` object.
		
		If both `url` and `options` are specified, the objects are merged, with the `options` properties taking precedence.
		
		The optional `callback` parameter will be added as a one-time listener for
		the `'response'` event.
		
		`http.request()` returns an instance of the
		{@link
		ClientRequest
		}
		class. The `ClientRequest` instance is a writable stream. If one needs to
		upload a file with a POST request, then write to the `ClientRequest` object.
		
		```js
		import http from 'node:http';
		import { Buffer } from 'node:buffer';
		
		const postData = JSON.stringify({
		  'msg': 'Hello World!',
		});
		
		const options = {
		  hostname: 'www.google.com',
		  port: 80,
		  path: '/upload',
		  method: 'POST',
		  headers: {
		    'Content-Type': 'application/json',
		    'Content-Length': Buffer.byteLength(postData),
		  },
		};
		
		const req = http.request(options, (res) => {
		  console.log(`STATUS: ${res.statusCode}`);
		  console.log(`HEADERS: ${JSON.stringify(res.headers)}`);
		  res.setEncoding('utf8');
		  res.on('data', (chunk) => {
		    console.log(`BODY: ${chunk}`);
		  });
		  res.on('end', () => {
		    console.log('No more data in response.');
		  });
		});
		
		req.on('error', (e) => {
		  console.error(`problem with request: ${e.message}`);
		});
		
		// Write data to request body
		req.write(postData);
		req.end();
		```
		
		In the example `req.end()` was called. With `http.request()` one
		must always call `req.end()` to signify the end of the request -
		even if there is no data being written to the request body.
		
		If any error is encountered during the request (be that with DNS resolution,
		TCP level errors, or actual HTTP parse errors) an `'error'` event is emitted
		on the returned request object. As with all `'error'` events, if no listeners
		are registered the error will be thrown.
		
		There are a few special headers that should be noted.
		
		* Sending a 'Connection: keep-alive' will notify Node.js that the connection to
		the server should be persisted until the next request.
		* Sending a 'Content-Length' header will disable the default chunked encoding.
		* Sending an 'Expect' header will immediately send the request headers.
		Usually, when sending 'Expect: 100-continue', both a timeout and a listener
		for the `'continue'` event should be set. See RFC 2616 Section 8.2.3 for more
		information.
		* Sending an Authorization header will override using the `auth` option
		to compute basic authentication.
		
		Example using a `URL` as `options`:
		
		```js
		const options = new URL('http://abc:xyz@example.com');
		
		const req = http.request(options, (res) => {
		  // ...
		});
		```
		
		In a successful request, the following events will be emitted in the following
		order:
		
		* `'socket'`
		* `'response'`
		   * `'data'` any number of times, on the `res` object
		   (`'data'` will not be emitted at all if the response body is empty, for
		   instance, in most redirects)
		   * `'end'` on the `res` object
		* `'close'`
		
		In the case of a connection error, the following events will be emitted:
		
		* `'socket'`
		* `'error'`
		* `'close'`
		
		In the case of a premature connection close before the response is received,
		the following events will be emitted in the following order:
		
		* `'socket'`
		* `'error'` with an error with message `'Error: socket hang up'` and code `'ECONNRESET'`
		* `'close'`
		
		In the case of a premature connection close after the response is received,
		the following events will be emitted in the following order:
		
		* `'socket'`
		* `'response'`
		   * `'data'` any number of times, on the `res` object
		* (connection closed here)
		* `'aborted'` on the `res` object
		* `'close'`
		* `'error'` on the `res` object with an error with message `'Error: aborted'` and code `'ECONNRESET'`
		* `'close'` on the `res` object
		
		If `req.destroy()` is called before a socket is assigned, the following
		events will be emitted in the following order:
		
		* (`req.destroy()` called here)
		* `'error'` with an error with message `'Error: socket hang up'` and code `'ECONNRESET'`, or the error with which `req.destroy()` was called
		* `'close'`
		
		If `req.destroy()` is called before the connection succeeds, the following
		events will be emitted in the following order:
		
		* `'socket'`
		* (`req.destroy()` called here)
		* `'error'` with an error with message `'Error: socket hang up'` and code `'ECONNRESET'`, or the error with which `req.destroy()` was called
		* `'close'`
		
		If `req.destroy()` is called after the response is received, the following
		events will be emitted in the following order:
		
		* `'socket'`
		* `'response'`
		   * `'data'` any number of times, on the `res` object
		* (`req.destroy()` called here)
		* `'aborted'` on the `res` object
		* `'close'`
		* `'error'` on the `res` object with an error with message `'Error: aborted'` and code `'ECONNRESET'`, or the error with which `req.destroy()` was called
		* `'close'` on the `res` object
		
		If `req.abort()` is called before a socket is assigned, the following
		events will be emitted in the following order:
		
		* (`req.abort()` called here)
		* `'abort'`
		* `'close'`
		
		If `req.abort()` is called before the connection succeeds, the following
		events will be emitted in the following order:
		
		* `'socket'`
		* (`req.abort()` called here)
		* `'abort'`
		* `'error'` with an error with message `'Error: socket hang up'` and code `'ECONNRESET'`
		* `'close'`
		
		If `req.abort()` is called after the response is received, the following
		events will be emitted in the following order:
		
		* `'socket'`
		* `'response'`
		   * `'data'` any number of times, on the `res` object
		* (`req.abort()` called here)
		* `'abort'`
		* `'aborted'` on the `res` object
		* `'error'` on the `res` object with an error with message `'Error: aborted'` and code `'ECONNRESET'`.
		* `'close'`
		* `'close'` on the `res` object
		
		Setting the `timeout` option or using the `setTimeout()` function will
		not abort the request or do anything besides add a `'timeout'` event.
		
		Passing an `AbortSignal` and then calling `abort()` on the corresponding `AbortController` will behave the same way as calling `.destroy()` on the
		request. Specifically, the `'error'` event will be emitted with an error with
		the message `'AbortError: The operation was aborted'`, the code `'ABORT_ERR'` and the `cause`, if one was provided.
	**/
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.http.RequestOptions, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function request(options:ts.AnyOf3<String, node.url.URL, node.http.RequestOptions>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	/**
		Since most requests are GET requests without bodies, Node.js provides this
		convenience method. The only difference between this method and
		{@link
		request
		}
		is that it sets the method to GET by default and calls `req.end()` automatically. The callback must take care to
		consume the response
		data for reasons stated in
		{@link
		ClientRequest
		}
		section.
		
		The `callback` is invoked with a single argument that is an instance of
		{@link
		IncomingMessage
		}
		.
		
		JSON fetching example:
		
		```js
		http.get('http://localhost:8000/', (res) => {
		  const { statusCode } = res;
		  const contentType = res.headers['content-type'];
		
		  let error;
		  // Any 2xx status code signals a successful response but
		  // here we're only checking for 200.
		  if (statusCode !== 200) {
		    error = new Error('Request Failed.\n' +
		                      `Status Code: ${statusCode}`);
		  } else if (!/^application\/json/.test(contentType)) {
		    error = new Error('Invalid content-type.\n' +
		                      `Expected application/json but received ${contentType}`);
		  }
		  if (error) {
		    console.error(error.message);
		    // Consume response data to free up memory
		    res.resume();
		    return;
		  }
		
		  res.setEncoding('utf8');
		  let rawData = '';
		  res.on('data', (chunk) => { rawData += chunk; });
		  res.on('end', () => {
		    try {
		      const parsedData = JSON.parse(rawData);
		      console.log(parsedData);
		    } catch (e) {
		      console.error(e.message);
		    }
		  });
		}).on('error', (e) => {
		  console.error(`Got error: ${e.message}`);
		});
		
		// Create a local server to receive data from
		const server = http.createServer((req, res) => {
		  res.writeHead(200, { 'Content-Type': 'application/json' });
		  res.end(JSON.stringify({
		    data: 'Hello World!',
		  }));
		});
		
		server.listen(8000);
		```
	**/
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.http.RequestOptions, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function get(options:ts.AnyOf3<String, node.url.URL, node.http.RequestOptions>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	/**
		Performs the low-level validations on the provided `name` that are done when `res.setHeader(name, value)` is called.
		
		Passing illegal value as `name` will result in a `TypeError` being thrown,
		identified by `code: 'ERR_INVALID_HTTP_TOKEN'`.
		
		It is not necessary to use this method before passing headers to an HTTP request
		or response. The HTTP module will automatically validate such headers.
		
		Example:
		
		```js
		import { validateHeaderName } from 'node:http';
		
		try {
		  validateHeaderName('');
		} catch (err) {
		  console.error(err instanceof TypeError); // --> true
		  console.error(err.code); // --> 'ERR_INVALID_HTTP_TOKEN'
		  console.error(err.message); // --> 'Header name must be a valid HTTP token [""]'
		}
		```
	**/
	static function validateHeaderName(name:String):Void;
	/**
		Performs the low-level validations on the provided `value` that are done when `res.setHeader(name, value)` is called.
		
		Passing illegal value as `value` will result in a `TypeError` being thrown.
		
		* Undefined value error is identified by `code: 'ERR_HTTP_INVALID_HEADER_VALUE'`.
		* Invalid value character error is identified by `code: 'ERR_INVALID_CHAR'`.
		
		It is not necessary to use this method before passing headers to an HTTP request
		or response. The HTTP module will automatically validate such headers.
		
		Examples:
		
		```js
		import { validateHeaderValue } from 'node:http';
		
		try {
		  validateHeaderValue('x-my-header', undefined);
		} catch (err) {
		  console.error(err instanceof TypeError); // --> true
		  console.error(err.code === 'ERR_HTTP_INVALID_HEADER_VALUE'); // --> true
		  console.error(err.message); // --> 'Invalid value "undefined" for header "x-my-header"'
		}
		
		try {
		  validateHeaderValue('x-my-header', 'oʊmɪɡə');
		} catch (err) {
		  console.error(err instanceof TypeError); // --> true
		  console.error(err.code === 'ERR_INVALID_CHAR'); // --> true
		  console.error(err.message); // --> 'Invalid character in header content ["x-my-header"]'
		}
		```
	**/
	static function validateHeaderValue(name:String, value:String):Void;
	/**
		Set the maximum number of idle HTTP parsers.
	**/
	static function setMaxIdleHTTPParsers(max:Float):Void;
	static final METHODS : Array<String>;
	static final STATUS_CODES : haxe.DynamicAccess<Null<String>>;
	/**
		Global instance of `Agent` which is used as the default for all HTTP client
		requests. Diverges from a default `Agent` configuration by having `keepAlive`
		enabled and a `timeout` of 5 seconds.
	**/
	static var globalAgent : node.http.Agent;
	/**
		Read-only property specifying the maximum allowed size of HTTP headers in bytes.
		Defaults to 16KB. Configurable using the `--max-http-header-size` CLI option.
	**/
	static final maxHeaderSize : Float;
}