package node.http;

@:jsRequire("http", "Server") extern class Server<Request:({ var prototype : IncomingMessage; /** A utility method for creating Readable Streams out of iterators. **/ function from(iterable:ts.AnyOf2<Iterable<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>, ?options:node.stream.stream.ReadableOptions<node.stream.stream.Readable>):node.stream.stream.Readable; /** A utility method for creating a `Readable` from a web `ReadableStream`. **/ function fromWeb(readableStream:node.stream.web.ReadableStream<Dynamic>, ?options:{ /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; @:optional var encoding : global.nodejs.BufferEncoding; @:optional var highWaterMark : Float; @:optional var objectMode : Bool; }):node.stream.stream.Readable; /** A utility method for creating a web `ReadableStream` from a `Readable`. **/ function toWeb(streamReadable:node.stream.stream.Readable, ?options:{ @:optional var strategy : node.stream.web.QueuingStrategy<Dynamic>; }):node.stream.web.ReadableStream<Dynamic>; /** Returns whether the stream has been read from or cancelled. **/ function isDisturbed(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool; /** The utility function `duplexPair` returns an Array with two items,each being a `Duplex` stream connected to the other side:```jsconst [ sideA, sideB ] = duplexPair();```Whatever is written to one stream is made readable on the other. It providesbehavior analogous to a network connection, where the data written by the clientbecomes readable by the server, and vice-versa.The Duplex streams are symmetrical; one or the other may be used without anydifference in behavior. **/ function duplexPair(?options:node.stream.stream.DuplexOptions<node.stream.stream.Duplex>):ts.Tuple2<node.stream.stream.Duplex, node.stream.stream.Duplex>; /** A stream to attach a signal to.Attaches an AbortSignal to a readable or writeable stream. This lets codecontrol stream destruction using an `AbortController`.Calling `abort` on the `AbortController` corresponding to the passed `AbortSignal` will behave the same way as calling `.destroy(new AbortError())` on thestream, and `controller.error(new AbortError())` for webstreams.```jsimport fs from 'node:fs';const controller = new AbortController();const read = addAbortSignal(  controller.signal,  fs.createReadStream(('object.json')),);// Later, abort the operation closing the streamcontroller.abort();```Or using an `AbortSignal` with a readable stream as an async iterable:```jsconst controller = new AbortController();setTimeout(() => controller.abort(), 10_000); // set a timeoutconst stream = addAbortSignal(  controller.signal,  fs.createReadStream(('object.json')),);(async () => {  try {    for await (const chunk of stream) {      await process(chunk);    }  } catch (e) {    if (e.name === 'AbortError') {      // The operation was cancelled    } else {      throw e;    }  }})();```Or using an `AbortSignal` with a ReadableStream:```jsconst controller = new AbortController();const rs = new ReadableStream({  start(controller) {    controller.enqueue('hello');    controller.enqueue('world');    controller.close();  },});addAbortSignal(controller.signal, rs);finished(rs, (err) => {  if (err) {    if (err.name === 'AbortError') {      // The operation was cancelled    }  }});const reader = rs.getReader();reader.read().then(({ value, done }) => {  console.log(value); // hello  console.log(done); // false  controller.abort();});``` **/ function addAbortSignal<T:(node.Stream)>(signal:js.html.AbortSignal, stream:T):T; /** Returns the default highWaterMark used by streams.Defaults to `16384` (16 KiB), or `16` for `objectMode`. **/ function getDefaultHighWaterMark(objectMode:Bool):Float; /** Sets the default highWaterMark used by streams. **/ function setDefaultHighWaterMark(objectMode:Bool, value:Float):Void; /** A readable and/or writable stream/webstream.A function to get notified when a stream is no longer readable, writableor has experienced an error or a premature close event.```jsimport { finished } from 'node:stream';import fs from 'node:fs';const rs = fs.createReadStream('archive.tar');finished(rs, (err) => {  if (err) {    console.error('Stream failed.', err);  } else {    console.log('Stream is done reading.');  }});rs.resume(); // Drain the stream.```Especially useful in error handling scenarios where a stream is destroyedprematurely (like an aborted HTTP request), and will not emit `'end'` or `'finish'`.The `finished` API provides [`promise version`](https://nodejs.org/docs/latest-v20.x/api/stream.html#streamfinishedstream-options).`stream.finished()` leaves dangling event listeners (in particular `'error'`, `'end'`, `'finish'` and `'close'`) after `callback` has beeninvoked. The reason for this is so that unexpected `'error'` events (due toincorrect stream implementations) do not cause unexpected crashes.If this is unwanted behavior then the returned cleanup function needs to beinvoked in the callback:```jsconst cleanup = finished(rs, (err) => {  cleanup();  // ...});``` **/ @:overload(function(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void { }) function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void; /** A module method to pipe between streams and generators forwarding errors andproperly cleaning up and provide a callback when the pipeline is complete.```jsimport { pipeline } from 'node:stream';import fs from 'node:fs';import zlib from 'node:zlib';// Use the pipeline API to easily pipe a series of streams// together and get notified when the pipeline is fully done.// A pipeline to gzip a potentially huge tar file efficiently:pipeline(  fs.createReadStream('archive.tar'),  zlib.createGzip(),  fs.createWriteStream('archive.tar.gz'),  (err) => {    if (err) {      console.error('Pipeline failed.', err);    } else {      console.log('Pipeline succeeded.');    }  },);```The `pipeline` API provides a [`promise version`](https://nodejs.org/docs/latest-v20.x/api/stream.html#streampipelinesource-transforms-destination-options).`stream.pipeline()` will call `stream.destroy(err)` on all streams except:* `Readable` streams which have emitted `'end'` or `'close'`.* `Writable` streams which have emitted `'finish'` or `'close'`.`stream.pipeline()` leaves dangling event listeners on the streamsafter the `callback` has been invoked. In the case of reuse of streams afterfailure, this can cause event listener leaks and swallowed errors. If the laststream is readable, dangling event listeners will be removed so that the laststream can be consumed later.`stream.pipeline()` closes all the streams when an error is raised.The `IncomingRequest` usage with `pipeline` could lead to an unexpected behavioronce it would destroy the socket without sending the expected response.See the example below:```jsimport fs from 'node:fs';import http from 'node:http';import { pipeline } from 'node:stream';const server = http.createServer((req, res) => {  const fileStream = fs.createReadStream('./fileNotExist.txt');  pipeline(fileStream, res, (err) => {    if (err) {      console.log(err); // No such file      // this message can't be sent once `pipeline` already destroyed the socket      return res.end('error!!!');    }  });});``` **/ @:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { }) @:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { }) @:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), T3:(node.stream.stream.PipelineTransform<T2, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { }) @:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), T3:(node.stream.stream.PipelineTransform<T2, Dynamic>), T4:(node.stream.stream.PipelineTransform<T3, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { }) @:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>>, callback:(err:Null<global.nodejs.ErrnoException>) -> Void):global.nodejs.WritableStream { }) @:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:Null<global.nodejs.ErrnoException>) -> Void>>):global.nodejs.WritableStream { }) function pipeline<A:(node.stream.stream.PipelineSource<Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic; /** Returns whether the stream has encountered an error. **/ function isErrored(stream:ts.AnyOf4<global.nodejs.ReadableStream, global.nodejs.WritableStream, node.stream.stream.Readable, node.stream.stream.Writable>):Bool; /** Returns whether the stream is readable. **/ function isReadable(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool; /** Creates a `Promise` that is fulfilled when the `EventEmitter` emits the givenevent or that is rejected if the `EventEmitter` emits `'error'` while waiting.The `Promise` will resolve with an array of all the arguments emitted to thegiven event.This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` eventsemantics and does not listen to the `'error'` event.```jsimport { once, EventEmitter } from 'node:events';import process from 'node:process';const ee = new EventEmitter();process.nextTick(() => {  ee.emit('myevent', 42);});const [value] = await once(ee, 'myevent');console.log(value);const err = new Error('kaboom');process.nextTick(() => {  ee.emit('error', err);});try {  await once(ee, 'myevent');} catch (err) {  console.error('error happened', err);}```The special handling of the `'error'` event is only used when `events.once()` is used to wait for another event. If `events.once()` is used to wait for the'`error'` event itself, then it is treated as any other kind of event withoutspecial handling:```jsimport { EventEmitter, once } from 'node:events';const ee = new EventEmitter();once(ee, 'error')  .then(([err]) => console.log('ok', err.message))  .catch((err) => console.error('error', err.message));ee.emit('error', new Error('boom'));// Prints: ok boom```An `AbortSignal` can be used to cancel waiting for the event:```jsimport { EventEmitter, once } from 'node:events';const ee = new EventEmitter();const ac = new AbortController();async function foo(emitter, event, signal) {  try {    await once(emitter, event, { signal });    console.log('event emitted!');  } catch (error) {    if (error.name === 'AbortError') {      console.error('Waiting for the event was canceled!');    } else {      console.error('There was an error', error.message);    }  }}foo(ee, 'foo', ac.signal);ac.abort(); // Abort waiting for the eventee.emit('foo'); // Prints: Waiting for the event was canceled!``` **/ @:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Server):js.lib.Promise<Array<Dynamic>> { }) function once(emitter:global.nodejs.EventEmitter<Server>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Server):js.lib.Promise<Array<Dynamic>>; /** ```jsimport { on, EventEmitter } from 'node:events';import process from 'node:process';const ee = new EventEmitter();// Emit later onprocess.nextTick(() => {  ee.emit('foo', 'bar');  ee.emit('foo', 42);});for await (const event of on(ee, 'foo')) {  // The execution of this inner block is synchronous and it  // processes one event at a time (even with await). Do not use  // if concurrent execution is required.  console.log(event); // prints ['bar'] [42]}// Unreachable here```Returns an `AsyncIterator` that iterates `eventName` events. It will throwif the `EventEmitter` emits `'error'`. It removes all listeners whenexiting the loop. The `value` returned by each iteration is an arraycomposed of the emitted event arguments.An `AbortSignal` can be used to cancel waiting on events:```jsimport { on, EventEmitter } from 'node:events';import process from 'node:process';const ac = new AbortController();(async () => {  const ee = new EventEmitter();  // Emit later on  process.nextTick(() => {    ee.emit('foo', 'bar');    ee.emit('foo', 42);  });  for await (const event of on(ee, 'foo', { signal: ac.signal })) {    // The execution of this inner block is synchronous and it    // processes one event at a time (even with await). Do not use    // if concurrent execution is required.    console.log(event); // prints ['bar'] [42]  }  // Unreachable here})();process.nextTick(() => ac.abort());```Use the `close` option to specify an array of event names that will end the iteration:```jsimport { on, EventEmitter } from 'node:events';import process from 'node:process';const ee = new EventEmitter();// Emit later onprocess.nextTick(() => {  ee.emit('foo', 'bar');  ee.emit('foo', 42);  ee.emit('close');});for await (const event of on(ee, 'foo', { close: ['close'] })) {  console.log(event); // prints ['bar'] [42]}// the loop will exit after 'close' is emittedconsole.log('done'); // prints 'done'``` **/ @:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Server):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { }) function on(emitter:global.nodejs.EventEmitter<Server>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Server):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>; /** A class method that returns the number of listeners for the given `eventName` registered on the given `emitter`.```jsimport { EventEmitter, listenerCount } from 'node:events';const myEmitter = new EventEmitter();myEmitter.on('event', () => {});myEmitter.on('event', () => {});console.log(listenerCount(myEmitter, 'event'));// Prints: 2``` **/ function listenerCount(emitter:global.nodejs.EventEmitter<Server>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float; /** Returns a copy of the array of listeners for the event named `eventName`.For `EventEmitter`s this behaves exactly the same as calling `.listeners` onthe emitter.For `EventTarget`s this is the only way to get the event listeners for theevent target. This is useful for debugging and diagnostic purposes.```jsimport { getEventListeners, EventEmitter } from 'node:events';{  const ee = new EventEmitter();  const listener = () => console.log('Events are fun');  ee.on('foo', listener);  console.log(getEventListeners(ee, 'foo')); // [ [Function: listener] ]}{  const et = new EventTarget();  const listener = () => console.log('Events are fun');  et.addEventListener('foo', listener);  console.log(getEventListeners(et, 'foo')); // [ [Function: listener] ]}``` **/ function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Server>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>; /** Returns the currently set max amount of listeners.For `EventEmitter`s this behaves exactly the same as calling `.getMaxListeners` onthe emitter.For `EventTarget`s this is the only way to get the max event listeners for theevent target. If the number of event handlers on a single EventTarget exceedsthe max set, the EventTarget will print a warning.```jsimport { getMaxListeners, setMaxListeners, EventEmitter } from 'node:events';{  const ee = new EventEmitter();  console.log(getMaxListeners(ee)); // 10  setMaxListeners(11, ee);  console.log(getMaxListeners(ee)); // 11}{  const et = new EventTarget();  console.log(getMaxListeners(et)); // 10  setMaxListeners(11, et);  console.log(getMaxListeners(et)); // 11}``` **/ function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Server>>):Float; /** ```jsimport { setMaxListeners, EventEmitter } from 'node:events';const target = new EventTarget();const emitter = new EventEmitter();setMaxListeners(5, target, emitter);``` **/ function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Server>>>):Void; /** Listens once to the `abort` event on the provided `signal`.Listening to the `abort` event on abort signals is unsafe and maylead to resource leaks since another third party with the signal cancall `e.stopImmediatePropagation()`. Unfortunately Node.js cannot changethis since it would violate the web standard. Additionally, the originalAPI makes it easy to forget to remove listeners.This API allows safely using `AbortSignal`s in Node.js APIs by solving thesetwo issues by listening to the event such that `stopImmediatePropagation` doesnot prevent the listener from running.Returns a disposable so that it may be unsubscribed from more easily.```jsimport { addAbortListener } from 'node:events';function example(signal) {  let disposable;  try {    signal.addEventListener('abort', (e) => e.stopImmediatePropagation());    disposable = addAbortListener(signal, (e) => {      // Do something when signal is aborted.    });  } finally {    disposable?.[Symbol.dispose]();  }}``` **/ function addAbortListener(signal:js.html.AbortSignal, resource:(event:js.html.Event) -> Void):global.Disposable; /** This symbol shall be used to install a listener for only monitoring `'error'` events. Listeners installed using this symbol are called before the regular `'error'` listeners are called.Installing a listener using this symbol does not change the behavior once an `'error'` event is emitted. Therefore, the process will still crash if noregular `'error'` listener is installed. **/ final errorMonitor : js.lib.Symbol; /** Value: `Symbol.for('nodejs.rejection')`See how to write a custom `rejection handler`. **/ final captureRejectionSymbol : js.lib.Symbol; /** Value: [boolean](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Boolean_type)Change the default `captureRejections` option on all new `EventEmitter` objects. **/ var captureRejections : Bool; /** By default, a maximum of `10` listeners can be registered for any singleevent. This limit can be changed for individual `EventEmitter` instancesusing the `emitter.setMaxListeners(n)` method. To change the defaultfor _all_`EventEmitter` instances, the `events.defaultMaxListeners` propertycan be used. If this value is not a positive number, a `RangeError` is thrown.Take caution when setting the `events.defaultMaxListeners` because thechange affects _all_ `EventEmitter` instances, including those created beforethe change is made. However, calling `emitter.setMaxListeners(n)` still hasprecedence over `events.defaultMaxListeners`.This is not a hard limit. The `EventEmitter` instance will allowmore listeners to be added but will output a trace warning to stderr indicatingthat a "possible EventEmitter memory leak" has been detected. For any single`EventEmitter`, the `emitter.getMaxListeners()` and `emitter.setMaxListeners()` methods can be used totemporarily avoid this warning:```jsimport { EventEmitter } from 'node:events';const emitter = new EventEmitter();emitter.setMaxListeners(emitter.getMaxListeners() + 1);emitter.once('event', () => {  // do stuff  emitter.setMaxListeners(Math.max(emitter.getMaxListeners() - 1, 0));});```The `--trace-warnings` command-line flag can be used to display thestack trace for such warnings.The emitted warning can be inspected with `process.on('warning')` and willhave the additional `emitter`, `type`, and `count` properties, referring tothe event emitter instance, the event's name and the number of attachedlisteners, respectively.Its `name` property is set to `'MaxListenersExceededWarning'`. **/ var defaultMaxListeners : Float; }), Response:({ var prototype : ServerResponse<Dynamic>; /** A utility method for creating a `Writable` from a web `WritableStream`. **/ function fromWeb(writableStream:node.stream.web.WritableStream<Dynamic>, ?options:{ /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; @:optional var highWaterMark : Float; @:optional var objectMode : Bool; @:optional var decodeStrings : Bool; }):node.stream.stream.Writable; /** A utility method for creating a web `WritableStream` from a `Writable`. **/ function toWeb(streamWritable:node.stream.stream.Writable):node.stream.web.WritableStream<Dynamic>; /** The utility function `duplexPair` returns an Array with two items,each being a `Duplex` stream connected to the other side:```jsconst [ sideA, sideB ] = duplexPair();```Whatever is written to one stream is made readable on the other. It providesbehavior analogous to a network connection, where the data written by the clientbecomes readable by the server, and vice-versa.The Duplex streams are symmetrical; one or the other may be used without anydifference in behavior. **/ function duplexPair(?options:node.stream.stream.DuplexOptions<node.stream.stream.Duplex>):ts.Tuple2<node.stream.stream.Duplex, node.stream.stream.Duplex>; /** A stream to attach a signal to.Attaches an AbortSignal to a readable or writeable stream. This lets codecontrol stream destruction using an `AbortController`.Calling `abort` on the `AbortController` corresponding to the passed `AbortSignal` will behave the same way as calling `.destroy(new AbortError())` on thestream, and `controller.error(new AbortError())` for webstreams.```jsimport fs from 'node:fs';const controller = new AbortController();const read = addAbortSignal(  controller.signal,  fs.createReadStream(('object.json')),);// Later, abort the operation closing the streamcontroller.abort();```Or using an `AbortSignal` with a readable stream as an async iterable:```jsconst controller = new AbortController();setTimeout(() => controller.abort(), 10_000); // set a timeoutconst stream = addAbortSignal(  controller.signal,  fs.createReadStream(('object.json')),);(async () => {  try {    for await (const chunk of stream) {      await process(chunk);    }  } catch (e) {    if (e.name === 'AbortError') {      // The operation was cancelled    } else {      throw e;    }  }})();```Or using an `AbortSignal` with a ReadableStream:```jsconst controller = new AbortController();const rs = new ReadableStream({  start(controller) {    controller.enqueue('hello');    controller.enqueue('world');    controller.close();  },});addAbortSignal(controller.signal, rs);finished(rs, (err) => {  if (err) {    if (err.name === 'AbortError') {      // The operation was cancelled    }  }});const reader = rs.getReader();reader.read().then(({ value, done }) => {  console.log(value); // hello  console.log(done); // false  controller.abort();});``` **/ function addAbortSignal<T:(node.Stream)>(signal:js.html.AbortSignal, stream:T):T; /** Returns the default highWaterMark used by streams.Defaults to `16384` (16 KiB), or `16` for `objectMode`. **/ function getDefaultHighWaterMark(objectMode:Bool):Float; /** Sets the default highWaterMark used by streams. **/ function setDefaultHighWaterMark(objectMode:Bool, value:Float):Void; /** A readable and/or writable stream/webstream.A function to get notified when a stream is no longer readable, writableor has experienced an error or a premature close event.```jsimport { finished } from 'node:stream';import fs from 'node:fs';const rs = fs.createReadStream('archive.tar');finished(rs, (err) => {  if (err) {    console.error('Stream failed.', err);  } else {    console.log('Stream is done reading.');  }});rs.resume(); // Drain the stream.```Especially useful in error handling scenarios where a stream is destroyedprematurely (like an aborted HTTP request), and will not emit `'end'` or `'finish'`.The `finished` API provides [`promise version`](https://nodejs.org/docs/latest-v20.x/api/stream.html#streamfinishedstream-options).`stream.finished()` leaves dangling event listeners (in particular `'error'`, `'end'`, `'finish'` and `'close'`) after `callback` has beeninvoked. The reason for this is so that unexpected `'error'` events (due toincorrect stream implementations) do not cause unexpected crashes.If this is unwanted behavior then the returned cleanup function needs to beinvoked in the callback:```jsconst cleanup = finished(rs, (err) => {  cleanup();  // ...});``` **/ @:overload(function(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void { }) function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void; /** A module method to pipe between streams and generators forwarding errors andproperly cleaning up and provide a callback when the pipeline is complete.```jsimport { pipeline } from 'node:stream';import fs from 'node:fs';import zlib from 'node:zlib';// Use the pipeline API to easily pipe a series of streams// together and get notified when the pipeline is fully done.// A pipeline to gzip a potentially huge tar file efficiently:pipeline(  fs.createReadStream('archive.tar'),  zlib.createGzip(),  fs.createWriteStream('archive.tar.gz'),  (err) => {    if (err) {      console.error('Pipeline failed.', err);    } else {      console.log('Pipeline succeeded.');    }  },);```The `pipeline` API provides a [`promise version`](https://nodejs.org/docs/latest-v20.x/api/stream.html#streampipelinesource-transforms-destination-options).`stream.pipeline()` will call `stream.destroy(err)` on all streams except:* `Readable` streams which have emitted `'end'` or `'close'`.* `Writable` streams which have emitted `'finish'` or `'close'`.`stream.pipeline()` leaves dangling event listeners on the streamsafter the `callback` has been invoked. In the case of reuse of streams afterfailure, this can cause event listener leaks and swallowed errors. If the laststream is readable, dangling event listeners will be removed so that the laststream can be consumed later.`stream.pipeline()` closes all the streams when an error is raised.The `IncomingRequest` usage with `pipeline` could lead to an unexpected behavioronce it would destroy the socket without sending the expected response.See the example below:```jsimport fs from 'node:fs';import http from 'node:http';import { pipeline } from 'node:stream';const server = http.createServer((req, res) => {  const fileStream = fs.createReadStream('./fileNotExist.txt');  pipeline(fileStream, res, (err) => {    if (err) {      console.log(err); // No such file      // this message can't be sent once `pipeline` already destroyed the socket      return res.end('error!!!');    }  });});``` **/ @:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { }) @:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { }) @:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), T3:(node.stream.stream.PipelineTransform<T2, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { }) @:overload(function<A:(node.stream.stream.PipelineSource<Dynamic>), T1:(node.stream.stream.PipelineTransform<A, Dynamic>), T2:(node.stream.stream.PipelineTransform<T1, Dynamic>), T3:(node.stream.stream.PipelineTransform<T2, Dynamic>), T4:(node.stream.stream.PipelineTransform<T3, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic { }) @:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>>, callback:(err:Null<global.nodejs.ErrnoException>) -> Void):global.nodejs.WritableStream { }) @:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:Null<global.nodejs.ErrnoException>) -> Void>>):global.nodejs.WritableStream { }) function pipeline<A:(node.stream.stream.PipelineSource<Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, node.stream.stream.PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, node.stream.stream.PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, node.stream.stream.PipelineDestinationIterableFunction<Dynamic>, node.stream.stream.PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, destination:B, callback:node.stream.stream.PipelineCallback<B>):Dynamic; /** Returns whether the stream has encountered an error. **/ function isErrored(stream:ts.AnyOf4<global.nodejs.ReadableStream, global.nodejs.WritableStream, node.stream.stream.Readable, node.stream.stream.Writable>):Bool; /** Returns whether the stream is readable. **/ function isReadable(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.stream.Readable>):Bool; /** Creates a `Promise` that is fulfilled when the `EventEmitter` emits the givenevent or that is rejected if the `EventEmitter` emits `'error'` while waiting.The `Promise` will resolve with an array of all the arguments emitted to thegiven event.This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` eventsemantics and does not listen to the `'error'` event.```jsimport { once, EventEmitter } from 'node:events';import process from 'node:process';const ee = new EventEmitter();process.nextTick(() => {  ee.emit('myevent', 42);});const [value] = await once(ee, 'myevent');console.log(value);const err = new Error('kaboom');process.nextTick(() => {  ee.emit('error', err);});try {  await once(ee, 'myevent');} catch (err) {  console.error('error happened', err);}```The special handling of the `'error'` event is only used when `events.once()` is used to wait for another event. If `events.once()` is used to wait for the'`error'` event itself, then it is treated as any other kind of event withoutspecial handling:```jsimport { EventEmitter, once } from 'node:events';const ee = new EventEmitter();once(ee, 'error')  .then(([err]) => console.log('ok', err.message))  .catch((err) => console.error('error', err.message));ee.emit('error', new Error('boom'));// Prints: ok boom```An `AbortSignal` can be used to cancel waiting for the event:```jsimport { EventEmitter, once } from 'node:events';const ee = new EventEmitter();const ac = new AbortController();async function foo(emitter, event, signal) {  try {    await once(emitter, event, { signal });    console.log('event emitted!');  } catch (error) {    if (error.name === 'AbortError') {      console.error('Waiting for the event was canceled!');    } else {      console.error('There was an error', error.message);    }  }}foo(ee, 'foo', ac.signal);ac.abort(); // Abort waiting for the eventee.emit('foo'); // Prints: Waiting for the event was canceled!``` **/ @:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Server):js.lib.Promise<Array<Dynamic>> { }) function once(emitter:global.nodejs.EventEmitter<Server>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Server):js.lib.Promise<Array<Dynamic>>; /** ```jsimport { on, EventEmitter } from 'node:events';import process from 'node:process';const ee = new EventEmitter();// Emit later onprocess.nextTick(() => {  ee.emit('foo', 'bar');  ee.emit('foo', 42);});for await (const event of on(ee, 'foo')) {  // The execution of this inner block is synchronous and it  // processes one event at a time (even with await). Do not use  // if concurrent execution is required.  console.log(event); // prints ['bar'] [42]}// Unreachable here```Returns an `AsyncIterator` that iterates `eventName` events. It will throwif the `EventEmitter` emits `'error'`. It removes all listeners whenexiting the loop. The `value` returned by each iteration is an arraycomposed of the emitted event arguments.An `AbortSignal` can be used to cancel waiting on events:```jsimport { on, EventEmitter } from 'node:events';import process from 'node:process';const ac = new AbortController();(async () => {  const ee = new EventEmitter();  // Emit later on  process.nextTick(() => {    ee.emit('foo', 'bar');    ee.emit('foo', 42);  });  for await (const event of on(ee, 'foo', { signal: ac.signal })) {    // The execution of this inner block is synchronous and it    // processes one event at a time (even with await). Do not use    // if concurrent execution is required.    console.log(event); // prints ['bar'] [42]  }  // Unreachable here})();process.nextTick(() => ac.abort());```Use the `close` option to specify an array of event names that will end the iteration:```jsimport { on, EventEmitter } from 'node:events';import process from 'node:process';const ee = new EventEmitter();// Emit later onprocess.nextTick(() => {  ee.emit('foo', 'bar');  ee.emit('foo', 42);  ee.emit('close');});for await (const event of on(ee, 'foo', { close: ['close'] })) {  console.log(event); // prints ['bar'] [42]}// the loop will exit after 'close' is emittedconsole.log('done'); // prints 'done'``` **/ @:overload(function(emitter:js.html.EventTarget, eventName:String, ?options:Server):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic> { }) function on(emitter:global.nodejs.EventEmitter<Server>, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Server):global.nodejs.AsyncIterator<Array<Dynamic>, Dynamic, Dynamic>; /** A class method that returns the number of listeners for the given `eventName` registered on the given `emitter`.```jsimport { EventEmitter, listenerCount } from 'node:events';const myEmitter = new EventEmitter();myEmitter.on('event', () => {});myEmitter.on('event', () => {});console.log(listenerCount(myEmitter, 'event'));// Prints: 2``` **/ function listenerCount(emitter:global.nodejs.EventEmitter<Server>, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float; /** Returns a copy of the array of listeners for the event named `eventName`.For `EventEmitter`s this behaves exactly the same as calling `.listeners` onthe emitter.For `EventTarget`s this is the only way to get the event listeners for theevent target. This is useful for debugging and diagnostic purposes.```jsimport { getEventListeners, EventEmitter } from 'node:events';{  const ee = new EventEmitter();  const listener = () => console.log('Events are fun');  ee.on('foo', listener);  console.log(getEventListeners(ee, 'foo')); // [ [Function: listener] ]}{  const et = new EventTarget();  const listener = () => console.log('Events are fun');  et.addEventListener('foo', listener);  console.log(getEventListeners(et, 'foo')); // [ [Function: listener] ]}``` **/ function getEventListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Server>>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>; /** Returns the currently set max amount of listeners.For `EventEmitter`s this behaves exactly the same as calling `.getMaxListeners` onthe emitter.For `EventTarget`s this is the only way to get the max event listeners for theevent target. If the number of event handlers on a single EventTarget exceedsthe max set, the EventTarget will print a warning.```jsimport { getMaxListeners, setMaxListeners, EventEmitter } from 'node:events';{  const ee = new EventEmitter();  console.log(getMaxListeners(ee)); // 10  setMaxListeners(11, ee);  console.log(getMaxListeners(ee)); // 11}{  const et = new EventTarget();  console.log(getMaxListeners(et)); // 10  setMaxListeners(11, et);  console.log(getMaxListeners(et)); // 11}``` **/ function getMaxListeners(emitter:ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Server>>):Float; /** ```jsimport { setMaxListeners, EventEmitter } from 'node:events';const target = new EventTarget();const emitter = new EventEmitter();setMaxListeners(5, target, emitter);``` **/ function setMaxListeners(?n:Float, eventTargets:haxe.extern.Rest<ts.AnyOf2<js.html.EventTarget, global.nodejs.EventEmitter<Server>>>):Void; /** Listens once to the `abort` event on the provided `signal`.Listening to the `abort` event on abort signals is unsafe and maylead to resource leaks since another third party with the signal cancall `e.stopImmediatePropagation()`. Unfortunately Node.js cannot changethis since it would violate the web standard. Additionally, the originalAPI makes it easy to forget to remove listeners.This API allows safely using `AbortSignal`s in Node.js APIs by solving thesetwo issues by listening to the event such that `stopImmediatePropagation` doesnot prevent the listener from running.Returns a disposable so that it may be unsubscribed from more easily.```jsimport { addAbortListener } from 'node:events';function example(signal) {  let disposable;  try {    signal.addEventListener('abort', (e) => e.stopImmediatePropagation());    disposable = addAbortListener(signal, (e) => {      // Do something when signal is aborted.    });  } finally {    disposable?.[Symbol.dispose]();  }}``` **/ function addAbortListener(signal:js.html.AbortSignal, resource:(event:js.html.Event) -> Void):global.Disposable; /** This symbol shall be used to install a listener for only monitoring `'error'` events. Listeners installed using this symbol are called before the regular `'error'` listeners are called.Installing a listener using this symbol does not change the behavior once an `'error'` event is emitted. Therefore, the process will still crash if noregular `'error'` listener is installed. **/ final errorMonitor : js.lib.Symbol; /** Value: `Symbol.for('nodejs.rejection')`See how to write a custom `rejection handler`. **/ final captureRejectionSymbol : js.lib.Symbol; /** Value: [boolean](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Boolean_type)Change the default `captureRejections` option on all new `EventEmitter` objects. **/ var captureRejections : Bool; /** By default, a maximum of `10` listeners can be registered for any singleevent. This limit can be changed for individual `EventEmitter` instancesusing the `emitter.setMaxListeners(n)` method. To change the defaultfor _all_`EventEmitter` instances, the `events.defaultMaxListeners` propertycan be used. If this value is not a positive number, a `RangeError` is thrown.Take caution when setting the `events.defaultMaxListeners` because thechange affects _all_ `EventEmitter` instances, including those created beforethe change is made. However, calling `emitter.setMaxListeners(n)` still hasprecedence over `events.defaultMaxListeners`.This is not a hard limit. The `EventEmitter` instance will allowmore listeners to be added but will output a trace warning to stderr indicatingthat a "possible EventEmitter memory leak" has been detected. For any single`EventEmitter`, the `emitter.getMaxListeners()` and `emitter.setMaxListeners()` methods can be used totemporarily avoid this warning:```jsimport { EventEmitter } from 'node:events';const emitter = new EventEmitter();emitter.setMaxListeners(emitter.getMaxListeners() + 1);emitter.once('event', () => {  // do stuff  emitter.setMaxListeners(Math.max(emitter.getMaxListeners() - 1, 0));});```The `--trace-warnings` command-line flag can be used to display thestack trace for such warnings.The emitted warning can be inspected with `process.on('warning')` and willhave the additional `emitter`, `type`, and `count` properties, referring tothe event emitter instance, the event's name and the number of attachedlisteners, respectively.Its `name` property is set to `'MaxListenersExceededWarning'`. **/ var defaultMaxListeners : Float; })> extends node.net.Server {
	@:overload(function(options:ServerOptions<Request, Response>, ?requestListener:RequestListener<Request, Response>):Server<Request, Response> { })
	function new(?requestListener:RequestListener<Request, Response>);
	/**
		Sets the timeout value for sockets, and emits a `'timeout'` event on
		the Server object, passing the socket as an argument, if a timeout
		occurs.
		
		If there is a `'timeout'` event listener on the Server object, then it
		will be called with the timed-out socket as an argument.
		
		By default, the Server does not timeout sockets. However, if a callback
		is assigned to the Server's `'timeout'` event, timeouts must be handled
		explicitly.
	**/
	@:overload(function(callback:(socket:node.net.Socket) -> Void):Server<Request, Response> { })
	function setTimeout(?msecs:Float, ?callback:(socket:node.net.Socket) -> Void):Server<Request, Response>;
	/**
		Limits maximum incoming headers count. If set to 0, no limit will be applied.
	**/
	var maxHeadersCount : Null<Float>;
	/**
		The maximum number of requests socket can handle
		before closing keep alive connection.
		
		A value of `0` will disable the limit.
		
		When the limit is reached it will set the `Connection` header value to `close`,
		but will not actually close the connection, subsequent requests sent
		after the limit is reached will get `503 Service Unavailable` as a response.
	**/
	var maxRequestsPerSocket : Null<Float>;
	/**
		The number of milliseconds of inactivity before a socket is presumed
		to have timed out.
		
		A value of `0` will disable the timeout behavior on incoming connections.
		
		The socket timeout logic is set up on connection, so changing this
		value only affects new connections to the server, not any existing connections.
	**/
	var timeout : Float;
	/**
		Limit the amount of time the parser will wait to receive the complete HTTP
		headers.
		
		If the timeout expires, the server responds with status 408 without
		forwarding the request to the request listener and then closes the connection.
		
		It must be set to a non-zero value (e.g. 120 seconds) to protect against
		potential Denial-of-Service attacks in case the server is deployed without a
		reverse proxy in front.
	**/
	var headersTimeout : Float;
	/**
		The number of milliseconds of inactivity a server needs to wait for additional
		incoming data, after it has finished writing the last response, before a socket
		will be destroyed. If the server receives new data before the keep-alive
		timeout has fired, it will reset the regular inactivity timeout, i.e., `server.timeout`.
		
		A value of `0` will disable the keep-alive timeout behavior on incoming
		connections.
		A value of `0` makes the http server behave similarly to Node.js versions prior
		to 8.0.0, which did not have a keep-alive timeout.
		
		The socket timeout logic is set up on connection, so changing this value only
		affects new connections to the server, not any existing connections.
	**/
	var keepAliveTimeout : Float;
	/**
		Sets the timeout value in milliseconds for receiving the entire request from
		the client.
		
		If the timeout expires, the server responds with status 408 without
		forwarding the request to the request listener and then closes the connection.
		
		It must be set to a non-zero value (e.g. 120 seconds) to protect against
		potential Denial-of-Service attacks in case the server is deployed without a
		reverse proxy in front.
	**/
	var requestTimeout : Float;
	/**
		Closes all connections connected to this server.
	**/
	function closeAllConnections():Void;
	/**
		Closes all connections connected to this server which are not sending a request
		or waiting for a response.
	**/
	function closeIdleConnections():Void;
	/**
		events.EventEmitter
		  1. close
		  2. connection
		  3. error
		  4. listening
		  5. drop
	**/
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server<Request, Response>;
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
	@:overload(function(event:String, socket:node.net.Socket):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, req:js.lib.InstanceType<Request>, res:{ var req : js.lib.InstanceType<Request>; }):Bool { })
	@:overload(function(event:String, req:js.lib.InstanceType<Request>, res:{ var req : js.lib.InstanceType<Request>; }):Bool { })
	@:overload(function(event:String, err:js.lib.Error, socket:node.stream.stream.Duplex):Bool { })
	@:overload(function(event:String, req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer):Bool { })
	@:overload(function(event:String, req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex):Bool { })
	@:overload(function(event:String, req:js.lib.InstanceType<Request>, res:{ var req : js.lib.InstanceType<Request>; }):Bool { })
	@:overload(function(event:String, req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer):Bool { })
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
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
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server<Request, Response>;
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
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server<Request, Response>;
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
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server<Request, Response>;
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
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:() -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(err:js.lib.Error, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex) -> Void):Server<Request, Response> { })
	@:overload(function(event:String, listener:RequestListener<Request, Response>):Server<Request, Response> { })
	@:overload(function(event:String, listener:(req:js.lib.InstanceType<Request>, socket:node.stream.stream.Duplex, head:node.buffer.NonSharedBuffer) -> Void):Server<Request, Response> { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server<Request, Response>;
	/**
		Start a server listening for connections. A `net.Server` can be a TCP or
		an `IPC` server depending on what it listens to.
		
		Possible signatures:
		
		* `server.listen(handle[, backlog][, callback])`
		* `server.listen(options[, callback])`
		* `server.listen(path[, backlog][, callback])` for `IPC` servers
		* `server.listen([port[, host[, backlog]]][, callback])` for TCP servers
		
		This function is asynchronous. When the server starts listening, the `'listening'` event will be emitted. The last parameter `callback`will be added as a listener for the `'listening'`
		event.
		
		All `listen()` methods can take a `backlog` parameter to specify the maximum
		length of the queue of pending connections. The actual length will be determined
		by the OS through sysctl settings such as `tcp_max_syn_backlog` and `somaxconn` on Linux. The default value of this parameter is 511 (not 512).
		
		All
		{@link
		Socket
		}
		are set to `SO_REUSEADDR` (see [`socket(7)`](https://man7.org/linux/man-pages/man7/socket.7.html) for
		details).
		
		The `server.listen()` method can be called again if and only if there was an
		error during the first `server.listen()` call or `server.close()` has been
		called. Otherwise, an `ERR_SERVER_ALREADY_LISTEN` error will be thrown.
		
		One of the most common errors raised when listening is `EADDRINUSE`.
		This happens when another server is already listening on the requested`port`/`path`/`handle`. One way to handle this would be to retry
		after a certain amount of time:
		
		```js
		server.on('error', (e) => {
		  if (e.code === 'EADDRINUSE') {
		    console.error('Address in use, retrying...');
		    setTimeout(() => {
		      server.close();
		      server.listen(PORT, HOST);
		    }, 1000);
		  }
		});
		```
	**/
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Server<Request, Response> { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Server<Request, Response> { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Server<Request, Response> { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Server<Request, Response> { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Server<Request, Response> { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):Server<Request, Response> { })
	@:overload(function(handle:Dynamic, ?backlog:Float, ?listeningListener:() -> Void):Server<Request, Response> { })
	@:overload(function(handle:Dynamic, ?listeningListener:() -> Void):Server<Request, Response> { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Server<Request, Response>;
	/**
		Stops the server from accepting new connections and keeps existing
		connections. This function is asynchronous, the server is finally closed
		when all connections are ended and the server emits a `'close'` event.
		The optional `callback` will be called once the `'close'` event occurs. Unlike
		that event, it will be called with an `Error` as its only argument if the server
		was not open when it was closed.
	**/
	function close(?callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Server<Request, Response>;
	/**
		Asynchronously get the number of concurrent connections on the server. Works
		when sockets were sent to forks.
		
		Callback should take two arguments `err` and `count`.
	**/
	function getConnections(cb:(error:Null<js.lib.Error>, count:Float) -> Void):Server<Request, Response>;
	/**
		Opposite of `unref()`, calling `ref()` on a previously `unref`ed server will _not_ let the program exit if it's the only server left (the default behavior).
		If the server is `ref`ed calling `ref()` again will have no effect.
	**/
	function ref():Server<Request, Response>;
	/**
		Calling `unref()` on a server will allow the program to exit if this is the only
		active server in the event system. If the server is already `unref`ed calling`unref()` again will have no effect.
	**/
	function unref():Server<Request, Response>;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server<Request, Response>;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server<Request, Response>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Server<Request, Response>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Server<Request, Response>;
	static var prototype : Server<Dynamic, Dynamic>;
}