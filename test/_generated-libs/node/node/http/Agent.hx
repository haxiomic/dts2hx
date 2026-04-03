package node.http;

/**
	An `Agent` is responsible for managing connection persistence
	and reuse for HTTP clients. It maintains a queue of pending requests
	for a given host and port, reusing a single socket connection for each
	until the queue is empty, at which time the socket is either destroyed
	or put into a pool where it is kept to be used again for requests to the
	same host and port. Whether it is destroyed or pooled depends on the `keepAlive` `option`.
	
	Pooled connections have TCP Keep-Alive enabled for them, but servers may
	still close idle connections, in which case they will be removed from the
	pool and a new connection will be made when a new HTTP request is made for
	that host and port. Servers may also refuse to allow multiple requests
	over the same connection, in which case the connection will have to be
	remade for every request and cannot be pooled. The `Agent` will still make
	the requests to that server, but each one will occur over a new connection.
	
	When a connection is closed by the client or the server, it is removed
	from the pool. Any unused sockets in the pool will be unrefed so as not
	to keep the Node.js process running when there are no outstanding requests.
	(see `socket.unref()`).
	
	It is good practice, to `destroy()` an `Agent` instance when it is no
	longer in use, because unused sockets consume OS resources.
	
	Sockets are removed from an agent when the socket emits either
	a `'close'` event or an `'agentRemove'` event. When intending to keep one
	HTTP request open for a long time without keeping it in the agent, something
	like the following may be done:
	
	```js
	http.get(options, (res) => {
	  // Do stuff
	}).on('socket', (socket) => {
	  socket.emit('agentRemove');
	});
	```
	
	An agent may also be used for an individual request. By providing `{agent: false}` as an option to the `http.get()` or `http.request()` functions, a one-time use `Agent` with default options
	will be used
	for the client connection.
	
	`agent:false`:
	
	```js
	http.get({
	  hostname: 'localhost',
	  port: 80,
	  path: '/',
	  agent: false,  // Create a new agent just for this one request
	}, (res) => {
	  // Do stuff with response
	});
	```
	
	`options` in [`socket.connect()`](https://nodejs.org/docs/latest-v20.x/api/net.html#socketconnectoptions-connectlistener) are also supported.
	
	To configure any of them, a custom
	{@link
	Agent
	}
	instance must be created.
	
	```js
	import http from 'node:http';
	const keepAliveAgent = new http.Agent({ keepAlive: true });
	options.agent = keepAliveAgent;
	http.request(options, onResponseCallback)
	```
**/
@:jsRequire("http", "Agent") extern class Agent extends node.Events<Agent> {
	function new(?opts:AgentOptions);
	/**
		By default set to 256. For agents with `keepAlive` enabled, this
		sets the maximum number of sockets that will be left open in the free
		state.
	**/
	var maxFreeSockets : Float;
	/**
		By default set to `Infinity`. Determines how many concurrent sockets the agent
		can have open per origin. Origin is the returned value of `agent.getName()`.
	**/
	var maxSockets : Float;
	/**
		By default set to `Infinity`. Determines how many concurrent sockets the agent
		can have open. Unlike `maxSockets`, this parameter applies across all origins.
	**/
	var maxTotalSockets : Float;
	/**
		An object which contains arrays of sockets currently awaiting use by
		the agent when `keepAlive` is enabled. Do not modify.
		
		Sockets in the `freeSockets` list will be automatically destroyed and
		removed from the array on `'timeout'`.
	**/
	final freeSockets : global.nodejs.ReadOnlyDict<Array<node.net.Socket>>;
	/**
		An object which contains arrays of sockets currently in use by the
		agent. Do not modify.
	**/
	final sockets : global.nodejs.ReadOnlyDict<Array<node.net.Socket>>;
	/**
		An object which contains queues of requests that have not yet been assigned to
		sockets. Do not modify.
	**/
	final requests : global.nodejs.ReadOnlyDict<Array<ClientRequest>>;
	/**
		Destroy any sockets that are currently in use by the agent.
		
		It is usually not necessary to do this. However, if using an
		agent with `keepAlive` enabled, then it is best to explicitly shut down
		the agent when it is no longer needed. Otherwise,
		sockets might stay open for quite a long time before the server
		terminates them.
	**/
	function destroy():Void;
	/**
		Produces a socket/stream to be used for HTTP requests.
		
		By default, this function is the same as `net.createConnection()`. However,
		custom agents may override this method in case greater flexibility is desired.
		
		A socket/stream can be supplied in one of two ways: by returning the
		socket/stream from this function, or by passing the socket/stream to `callback`.
		
		This method is guaranteed to return an instance of the `net.Socket` class,
		a subclass of `stream.Duplex`, unless the user specifies a socket
		type other than `net.Socket`.
		
		`callback` has a signature of `(err, stream)`.
	**/
	function createConnection(options:ClientRequestArgs, ?callback:(err:Null<js.lib.Error>, stream:node.stream.stream.Duplex) -> Void):Null<node.stream.stream.Duplex>;
	/**
		Called when `socket` is detached from a request and could be persisted by the`Agent`. Default behavior is to:
		
		```js
		socket.setKeepAlive(true, this.keepAliveMsecs);
		socket.unref();
		return true;
		```
		
		This method can be overridden by a particular `Agent` subclass. If this
		method returns a falsy value, the socket will be destroyed instead of persisting
		it for use with the next request.
		
		The `socket` argument can be an instance of `net.Socket`, a subclass of `stream.Duplex`.
	**/
	function keepSocketAlive(socket:node.stream.stream.Duplex):Void;
	/**
		Called when `socket` is attached to `request` after being persisted because of
		the keep-alive options. Default behavior is to:
		
		```js
		socket.ref();
		```
		
		This method can be overridden by a particular `Agent` subclass.
		
		The `socket` argument can be an instance of `net.Socket`, a subclass of `stream.Duplex`.
	**/
	function reuseSocket(socket:node.stream.stream.Duplex, request:ClientRequest):Void;
	/**
		Get a unique name for a set of request options, to determine whether a
		connection can be reused. For an HTTP agent, this returns`host:port:localAddress` or `host:port:localAddress:family`. For an HTTPS agent,
		the name includes the CA, cert, ciphers, and other HTTPS/TLS-specific options
		that determine socket reusability.
	**/
	function getName(?options:ClientRequestArgs):String;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Agent;
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
	function on<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Agent;
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
	function once<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Agent;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Agent;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Agent;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Agent;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Agent;
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
	function prependListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Agent;
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
	function prependOnceListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Agent;
	static var prototype : Agent;
}