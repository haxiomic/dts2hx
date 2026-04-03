package node.worker_threads;

/**
	Instances of the `worker.MessagePort` class represent one end of an
	asynchronous, two-way communications channel. It can be used to transfer
	structured data, memory regions and other `MessagePort`s between different `Worker`s.
	
	This implementation matches [browser `MessagePort`](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort) s.
**/
typedef IMessagePort = {
	/**
		Disables further sending of messages on either side of the connection.
		This method can be called when no further communication will happen over this `MessagePort`.
		
		The `'close' event` is emitted on both `MessagePort` instances that
		are part of the channel.
	**/
	function close():Void;
	/**
		Sends a JavaScript value to the receiving side of this channel. `value` is transferred in a way which is compatible with
		the [HTML structured clone algorithm](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm).
		
		In particular, the significant differences to `JSON` are:
		
		* `value` may contain circular references.
		* `value` may contain instances of builtin JS types such as `RegExp`s, `BigInt`s, `Map`s, `Set`s, etc.
		* `value` may contain typed arrays, both using `ArrayBuffer`s
		and `SharedArrayBuffer`s.
		* `value` may contain [`WebAssembly.Module`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Module) instances.
		* `value` may not contain native (C++-backed) objects other than:
		
		```js
		import { MessageChannel } from 'node:worker_threads';
		const { port1, port2 } = new MessageChannel();
		
		port1.on('message', (message) => console.log(message));
		
		const circularData = {};
		circularData.foo = circularData;
		// Prints: { foo: [Circular] }
		port2.postMessage(circularData);
		```
		
		`transferList` may be a list of [`ArrayBuffer`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer), `MessagePort`, and `FileHandle` objects.
		After transferring, they are not usable on the sending side of the channel
		anymore (even if they are not contained in `value`). Unlike with `child processes`, transferring handles such as network sockets is currently
		not supported.
		
		If `value` contains [`SharedArrayBuffer`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer) instances, those are accessible
		from either thread. They cannot be listed in `transferList`.
		
		`value` may still contain `ArrayBuffer` instances that are not in `transferList`; in that case, the underlying memory is copied rather than moved.
		
		```js
		import { MessageChannel } from 'node:worker_threads';
		const { port1, port2 } = new MessageChannel();
		
		port1.on('message', (message) => console.log(message));
		
		const uint8Array = new Uint8Array([ 1, 2, 3, 4 ]);
		// This posts a copy of `uint8Array`:
		port2.postMessage(uint8Array);
		// This does not copy data, but renders `uint8Array` unusable:
		port2.postMessage(uint8Array, [ uint8Array.buffer ]);
		
		// The memory for the `sharedUint8Array` is accessible from both the
		// original and the copy received by `.on('message')`:
		const sharedUint8Array = new Uint8Array(new SharedArrayBuffer(4));
		port2.postMessage(sharedUint8Array);
		
		// This transfers a freshly created message port to the receiver.
		// This can be used, for example, to create communication channels between
		// multiple `Worker` threads that are children of the same parent thread.
		const otherChannel = new MessageChannel();
		port2.postMessage({ port: otherChannel.port1 }, [ otherChannel.port1 ]);
		```
		
		The message object is cloned immediately, and can be modified after
		posting without having side effects.
		
		For more information on the serialization and deserialization mechanisms
		behind this API, see the `serialization API of the node:v8 module`.
	**/
	function postMessage(value:Dynamic, ?transferList:haxe.ds.ReadOnlyArray<Transferable>):Void;
	/**
		Opposite of `unref()`. Calling `ref()` on a previously `unref()`ed port does _not_ let the program exit if it's the only active handle left (the default
		behavior). If the port is `ref()`ed, calling `ref()` again has no effect.
		
		If listeners are attached or removed using `.on('message')`, the port
		is `ref()`ed and `unref()`ed automatically depending on whether
		listeners for the event exist.
	**/
	function ref():Void;
	/**
		Calling `unref()` on a port allows the thread to exit if this is the only
		active handle in the event system. If the port is already `unref()`ed calling `unref()` again has no effect.
		
		If listeners are attached or removed using `.on('message')`, the port is `ref()`ed and `unref()`ed automatically depending on whether
		listeners for the event exist.
	**/
	function unref():Void;
	/**
		Starts receiving messages on this `MessagePort`. When using this port
		as an event emitter, this is called automatically once `'message'` listeners are attached.
		
		This method exists for parity with the Web `MessagePort` API. In Node.js,
		it is only useful for ignoring messages when no event listener is present.
		Node.js also diverges in its handling of `.onmessage`. Setting it
		automatically calls `.start()`, but unsetting it lets messages queue up
		until a new handler is set or the port is discarded.
	**/
	function start():Void;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):MessagePort { })
	@:overload(function(event:String, listener:(arg:Dynamic) -> Void):MessagePort { })
	function addListener(event:String, listener:(ev:js.html.Event) -> Void):MessagePort;
	@:overload(function(event:String, value:Dynamic):Bool { })
	@:overload(function(event:String, error:js.lib.Error):Bool { })
	@:overload(function(event:String, arg:Dynamic):Bool { })
	function emit(event:String, ev:js.html.Event):Bool;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void, ?options:js.html.EventListenerOptions):MessagePort { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void, ?options:js.html.EventListenerOptions):MessagePort { })
	@:overload(function(event:String, listener:(arg:Dynamic) -> Void, ?options:js.html.EventListenerOptions):MessagePort { })
	function off(event:String, listener:(ev:js.html.Event) -> Void, ?options:js.html.EventListenerOptions):MessagePort;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):MessagePort { })
	@:overload(function(event:String, listener:(arg:Dynamic) -> Void):MessagePort { })
	function on(event:String, listener:(ev:js.html.Event) -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):MessagePort { })
	@:overload(function(event:String, listener:(arg:Dynamic) -> Void):MessagePort { })
	function once(event:String, listener:(ev:js.html.Event) -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void, ?options:js.html.EventListenerOptions):MessagePort { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void, ?options:js.html.EventListenerOptions):MessagePort { })
	@:overload(function(event:String, listener:(arg:Dynamic) -> Void, ?options:js.html.EventListenerOptions):MessagePort { })
	function removeListener(event:String, listener:(ev:js.html.Event) -> Void, ?options:js.html.EventListenerOptions):MessagePort;
	/**
		Node.js-specific extension to the `EventTarget` class that returns an array
		of event `type` names for which event listeners are registered.
	**/
	function eventNames():Array<String>;
	/**
		Node.js-specific extension to the `EventTarget` class that returns the number
		of event listeners registered for the `type`.
	**/
	function listenerCount(type:String):Float;
	/**
		Node.js-specific extension to the `EventTarget` class that sets the number
		of max event listeners as `n`.
	**/
	function setMaxListeners(n:Float):Void;
	/**
		Node.js-specific extension to the `EventTarget` class that returns the number
		of max event listeners.
	**/
	function getMaxListeners():Float;
	/**
		Node.js-specific extension to the `EventTarget` class. If `type` is specified,
		removes all registered listeners for `type`, otherwise removes all registered
		listeners.
	**/
	function removeAllListeners(?type:String):MessagePort;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	function addEventListener(type:String, callback:Null<js.html.EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	function removeEventListener(type:String, callback:Null<js.html.EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
};