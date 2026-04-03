package node;

/**
	HTTPS is the HTTP protocol over TLS/SSL. In Node.js this is implemented as a
	separate module.
**/
@:jsRequire("https") @valueModuleOnly extern class Https {
	/**
		```js
		// curl -k https://localhost:8000/
		import https from 'node:https';
		import fs from 'node:fs';
		
		const options = {
		  key: fs.readFileSync('test/fixtures/keys/agent2-key.pem'),
		  cert: fs.readFileSync('test/fixtures/keys/agent2-cert.pem'),
		};
		
		https.createServer(options, (req, res) => {
		  res.writeHead(200);
		  res.end('hello world\n');
		}).listen(8000);
		```
		
		Or
		
		```js
		import https from 'node:https';
		import fs from 'node:fs';
		
		const options = {
		  pfx: fs.readFileSync('test/fixtures/test_cert.pfx'),
		  passphrase: 'sample',
		};
		
		https.createServer(options, (req, res) => {
		  res.writeHead(200);
		  res.end('hello world\n');
		}).listen(8000);
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
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Https):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Https):js.lib.Promise<Array<Dynamic>>;
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
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Https):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { })
		function on(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Https):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>;
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
		function listenerCount(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
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
		function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
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
		function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>):Float;
		/**
			```js
			import { setMaxListeners, EventEmitter } from 'node:events';
			
			const target = new EventTarget();
			const emitter = new EventEmitter();
			
			setMaxListeners(5, target, emitter);
			```
		**/
		function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>>):Void;
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
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Https):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Https):js.lib.Promise<Array<Dynamic>>;
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
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Https):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { })
		function on(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Https):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>;
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
		function listenerCount(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
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
		function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
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
		function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>):Float;
		/**
			```js
			import { setMaxListeners, EventEmitter } from 'node:events';
			
			const target = new EventTarget();
			const emitter = new EventEmitter();
			
			setMaxListeners(5, target, emitter);
			```
		**/
		function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>>):Void;
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
	})>(options:node.https.ServerOptions<Request, Response>, ?requestListener:node.http.RequestListener<Request, Response>):node.https.Server<Request, Response> { })
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
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Https):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Https):js.lib.Promise<Array<Dynamic>>;
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
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Https):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { })
		function on(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Https):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>;
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
		function listenerCount(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
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
		function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
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
		function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>):Float;
		/**
			```js
			import { setMaxListeners, EventEmitter } from 'node:events';
			
			const target = new EventTarget();
			const emitter = new EventEmitter();
			
			setMaxListeners(5, target, emitter);
			```
		**/
		function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>>):Void;
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
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Https):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Https):js.lib.Promise<Array<Dynamic>>;
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
		@:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Https):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { })
		function on(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Https):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>;
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
		function listenerCount(emitter:global.nodejs.EventEmitter<Https>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
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
		function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
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
		function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>):Float;
		/**
			```js
			import { setMaxListeners, EventEmitter } from 'node:events';
			
			const target = new EventTarget();
			const emitter = new EventEmitter();
			
			setMaxListeners(5, target, emitter);
			```
		**/
		function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Https>>>):Void;
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
	})>(?requestListener:node.http.RequestListener<Request, Response>):node.https.Server<Request, Response>;
	/**
		Makes a request to a secure web server.
		
		The following additional `options` from `tls.connect()` are also accepted: `ca`, `cert`, `ciphers`, `clientCertEngine`, `crl`, `dhparam`, `ecdhCurve`, `honorCipherOrder`, `key`, `passphrase`,
		`pfx`, `rejectUnauthorized`, `secureOptions`, `secureProtocol`, `servername`, `sessionIdContext`, `highWaterMark`.
		
		`options` can be an object, a string, or a `URL` object. If `options` is a
		string, it is automatically parsed with `new URL()`. If it is a `URL` object, it will be automatically converted to an ordinary `options` object.
		
		`https.request()` returns an instance of the `http.ClientRequest` class. The `ClientRequest` instance is a writable stream. If one needs to
		upload a file with a POST request, then write to the `ClientRequest` object.
		
		```js
		import https from 'node:https';
		
		const options = {
		  hostname: 'encrypted.google.com',
		  port: 443,
		  path: '/',
		  method: 'GET',
		};
		
		const req = https.request(options, (res) => {
		  console.log('statusCode:', res.statusCode);
		  console.log('headers:', res.headers);
		
		  res.on('data', (d) => {
		    process.stdout.write(d);
		  });
		});
		
		req.on('error', (e) => {
		  console.error(e);
		});
		req.end();
		```
		
		Example using options from `tls.connect()`:
		
		```js
		const options = {
		  hostname: 'encrypted.google.com',
		  port: 443,
		  path: '/',
		  method: 'GET',
		  key: fs.readFileSync('test/fixtures/keys/agent2-key.pem'),
		  cert: fs.readFileSync('test/fixtures/keys/agent2-cert.pem'),
		};
		options.agent = new https.Agent(options);
		
		const req = https.request(options, (res) => {
		  // ...
		});
		```
		
		Alternatively, opt out of connection pooling by not using an `Agent`.
		
		```js
		const options = {
		  hostname: 'encrypted.google.com',
		  port: 443,
		  path: '/',
		  method: 'GET',
		  key: fs.readFileSync('test/fixtures/keys/agent2-key.pem'),
		  cert: fs.readFileSync('test/fixtures/keys/agent2-cert.pem'),
		  agent: false,
		};
		
		const req = https.request(options, (res) => {
		  // ...
		});
		```
		
		Example using a `URL` as `options`:
		
		```js
		const options = new URL('https://abc:xyz@example.com');
		
		const req = https.request(options, (res) => {
		  // ...
		});
		```
		
		Example pinning on certificate fingerprint, or the public key (similar to`pin-sha256`):
		
		```js
		import tls from 'node:tls';
		import https from 'node:https';
		import crypto from 'node:crypto';
		
		function sha256(s) {
		  return crypto.createHash('sha256').update(s).digest('base64');
		}
		const options = {
		  hostname: 'github.com',
		  port: 443,
		  path: '/',
		  method: 'GET',
		  checkServerIdentity: function(host, cert) {
		    // Make sure the certificate is issued to the host we are connected to
		    const err = tls.checkServerIdentity(host, cert);
		    if (err) {
		      return err;
		    }
		
		    // Pin the public key, similar to HPKP pin-sha256 pinning
		    const pubkey256 = 'pL1+qb9HTMRZJmuC/bB/ZI9d302BYrrqiVuRyW+DGrU=';
		    if (sha256(cert.pubkey) !== pubkey256) {
		      const msg = 'Certificate verification error: ' +
		        `The public key of '${cert.subject.CN}' ` +
		        'does not match our pinned fingerprint';
		      return new Error(msg);
		    }
		
		    // Pin the exact certificate, rather than the pub key
		    const cert256 = '25:FE:39:32:D9:63:8C:8A:FC:A1:9A:29:87:' +
		      'D8:3E:4C:1D:98:DB:71:E4:1A:48:03:98:EA:22:6A:BD:8B:93:16';
		    if (cert.fingerprint256 !== cert256) {
		      const msg = 'Certificate verification error: ' +
		        `The certificate of '${cert.subject.CN}' ` +
		        'does not match our pinned fingerprint';
		      return new Error(msg);
		    }
		
		    // This loop is informational only.
		    // Print the certificate and public key fingerprints of all certs in the
		    // chain. Its common to pin the public key of the issuer on the public
		    // internet, while pinning the public key of the service in sensitive
		    // environments.
		    do {
		      console.log('Subject Common Name:', cert.subject.CN);
		      console.log('  Certificate SHA256 fingerprint:', cert.fingerprint256);
		
		      hash = crypto.createHash('sha256');
		      console.log('  Public key ping-sha256:', sha256(cert.pubkey));
		
		      lastprint256 = cert.fingerprint256;
		      cert = cert.issuerCertificate;
		    } while (cert.fingerprint256 !== lastprint256);
		
		  },
		};
		
		options.agent = new https.Agent(options);
		const req = https.request(options, (res) => {
		  console.log('All OK. Server matched our pinned cert or public key');
		  console.log('statusCode:', res.statusCode);
		  // Print the HPKP values
		  console.log('headers:', res.headers['public-key-pins']);
		
		  res.on('data', (d) => {});
		});
		
		req.on('error', (e) => {
		  console.error(e.message);
		});
		req.end();
		```
		
		Outputs for example:
		
		```text
		Subject Common Name: github.com
		  Certificate SHA256 fingerprint: 25:FE:39:32:D9:63:8C:8A:FC:A1:9A:29:87:D8:3E:4C:1D:98:DB:71:E4:1A:48:03:98:EA:22:6A:BD:8B:93:16
		  Public key ping-sha256: pL1+qb9HTMRZJmuC/bB/ZI9d302BYrrqiVuRyW+DGrU=
		Subject Common Name: DigiCert SHA2 Extended Validation Server CA
		  Certificate SHA256 fingerprint: 40:3E:06:2A:26:53:05:91:13:28:5B:AF:80:A0:D4:AE:42:2C:84:8C:9F:78:FA:D0:1F:C9:4B:C5:B8:7F:EF:1A
		  Public key ping-sha256: RRM1dGqnDFsCJXBTHky16vi1obOlCgFFn/yOhI/y+ho=
		Subject Common Name: DigiCert High Assurance EV Root CA
		  Certificate SHA256 fingerprint: 74:31:E5:F4:C3:C1:CE:46:90:77:4F:0B:61:E0:54:40:88:3B:A9:A0:1E:D0:0B:A6:AB:D7:80:6E:D3:B1:18:CF
		  Public key ping-sha256: WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18=
		All OK. Server matched our pinned cert or public key
		statusCode: 200
		headers: max-age=0; pin-sha256="WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18="; pin-sha256="RRM1dGqnDFsCJXBTHky16vi1obOlCgFFn/yOhI/y+ho=";
		pin-sha256="k2v657xBsOVe1PQRwOsHsw3bsGT2VzIqz5K+59sNQws="; pin-sha256="K87oWBWM9UZfyddvDfoxL+8lpNyoUB2ptGtn0fv6G2Q="; pin-sha256="IQBnNBEiFuhj+8x6X8XLgh01V9Ic5/V3IRQLNFFc7v4=";
		pin-sha256="iie1VXtL7HzAMF+/PVPR9xzT80kQxdZeJ+zduCB3uj0="; pin-sha256="LvRiGEjRqfzurezaWuj8Wie2gyHMrW5Q06LspMnox7A="; includeSubDomains
		```
	**/
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.https.RequestOptions, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function request(options:ts.AnyOf3<String, node.url.URL, node.https.RequestOptions>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	/**
		Like `http.get()` but for HTTPS.
		
		`options` can be an object, a string, or a `URL` object. If `options` is a
		string, it is automatically parsed with `new URL()`. If it is a `URL` object, it will be automatically converted to an ordinary `options` object.
		
		```js
		import https from 'node:https';
		
		https.get('https://encrypted.google.com/', (res) => {
		  console.log('statusCode:', res.statusCode);
		  console.log('headers:', res.headers);
		
		  res.on('data', (d) => {
		    process.stdout.write(d);
		  });
		
		}).on('error', (e) => {
		  console.error(e);
		});
		```
	**/
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.https.RequestOptions, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function get(options:ts.AnyOf3<String, node.url.URL, node.https.RequestOptions>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	static var globalAgent : node.https.Agent;
}