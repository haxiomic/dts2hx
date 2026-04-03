package node.dgram;

/**
	Encapsulates the datagram functionality.
	
	New instances of `dgram.Socket` are created using
	{@link
	createSocket
	}
	.
	The `new` keyword is not to be used to create `dgram.Socket` instances.
**/
@:jsRequire("dgram", "Socket") extern class Socket extends node.Events<Socket> {
	/**
		Tells the kernel to join a multicast group at the given `multicastAddress` and `multicastInterface` using the `IP_ADD_MEMBERSHIP` socket option. If the `multicastInterface` argument is not
		specified, the operating system will choose
		one interface and will add membership to it. To add membership to every
		available interface, call `addMembership` multiple times, once per interface.
		
		When called on an unbound socket, this method will implicitly bind to a random
		port, listening on all interfaces.
		
		When sharing a UDP socket across multiple `cluster` workers, the`socket.addMembership()` function must be called only once or an`EADDRINUSE` error will occur:
		
		```js
		import cluster from 'node:cluster';
		import dgram from 'node:dgram';
		
		if (cluster.isPrimary) {
		  cluster.fork(); // Works ok.
		  cluster.fork(); // Fails with EADDRINUSE.
		} else {
		  const s = dgram.createSocket('udp4');
		  s.bind(1234, () => {
		    s.addMembership('224.0.0.114');
		  });
		}
		```
	**/
	function addMembership(multicastAddress:String, ?multicastInterface:String):Void;
	/**
		Returns an object containing the address information for a socket.
		For UDP sockets, this object will contain `address`, `family`, and `port` properties.
		
		This method throws `EBADF` if called on an unbound socket.
	**/
	function address():node.net.AddressInfo;
	/**
		For UDP sockets, causes the `dgram.Socket` to listen for datagram
		messages on a named `port` and optional `address`. If `port` is not
		specified or is `0`, the operating system will attempt to bind to a
		random port. If `address` is not specified, the operating system will
		attempt to listen on all addresses. Once binding is complete, a `'listening'` event is emitted and the optional `callback` function is
		called.
		
		Specifying both a `'listening'` event listener and passing a `callback` to the `socket.bind()` method is not harmful but not very
		useful.
		
		A bound datagram socket keeps the Node.js process running to receive
		datagram messages.
		
		If binding fails, an `'error'` event is generated. In rare case (e.g.
		attempting to bind with a closed socket), an `Error` may be thrown.
		
		Example of a UDP server listening on port 41234:
		
		```js
		import dgram from 'node:dgram';
		
		const server = dgram.createSocket('udp4');
		
		server.on('error', (err) => {
		  console.error(`server error:\n${err.stack}`);
		  server.close();
		});
		
		server.on('message', (msg, rinfo) => {
		  console.log(`server got: ${msg} from ${rinfo.address}:${rinfo.port}`);
		});
		
		server.on('listening', () => {
		  const address = server.address();
		  console.log(`server listening ${address.address}:${address.port}`);
		});
		
		server.bind(41234);
		// Prints: server listening 0.0.0.0:41234
		```
	**/
	@:overload(function(?port:Float, ?callback:() -> Void):Socket { })
	@:overload(function(?callback:() -> Void):Socket { })
	@:overload(function(options:BindOptions, ?callback:() -> Void):Socket { })
	function bind(?port:Float, ?address:String, ?callback:() -> Void):Socket;
	/**
		Close the underlying socket and stop listening for data on it. If a callback is
		provided, it is added as a listener for the `'close'` event.
	**/
	function close(?callback:() -> Void):Socket;
	/**
		Associates the `dgram.Socket` to a remote address and port. Every
		message sent by this handle is automatically sent to that destination. Also,
		the socket will only receive messages from that remote peer.
		Trying to call `connect()` on an already connected socket will result
		in an `ERR_SOCKET_DGRAM_IS_CONNECTED` exception. If `address` is not
		provided, `'127.0.0.1'` (for `udp4` sockets) or `'::1'` (for `udp6` sockets)
		will be used by default. Once the connection is complete, a `'connect'` event
		is emitted and the optional `callback` function is called. In case of failure,
		the `callback` is called or, failing this, an `'error'` event is emitted.
	**/
	@:overload(function(port:Float, callback:() -> Void):Void { })
	function connect(port:Float, ?address:String, ?callback:() -> Void):Void;
	/**
		A synchronous function that disassociates a connected `dgram.Socket` from
		its remote address. Trying to call `disconnect()` on an unbound or already
		disconnected socket will result in an `ERR_SOCKET_DGRAM_NOT_CONNECTED` exception.
	**/
	function disconnect():Void;
	/**
		Instructs the kernel to leave a multicast group at `multicastAddress` using the `IP_DROP_MEMBERSHIP` socket option. This method is automatically called by the
		kernel when the socket is closed or the process terminates, so most apps will
		never have reason to call this.
		
		If `multicastInterface` is not specified, the operating system will attempt to
		drop membership on all valid interfaces.
	**/
	function dropMembership(multicastAddress:String, ?multicastInterface:String):Void;
	/**
		This method throws `ERR_SOCKET_BUFFER_SIZE` if called on an unbound socket.
	**/
	function getRecvBufferSize():Float;
	/**
		This method throws `ERR_SOCKET_BUFFER_SIZE` if called on an unbound socket.
	**/
	function getSendBufferSize():Float;
	function getSendQueueSize():Float;
	function getSendQueueCount():Float;
	/**
		By default, binding a socket will cause it to block the Node.js process from
		exiting as long as the socket is open. The `socket.unref()` method can be used
		to exclude the socket from the reference counting that keeps the Node.js
		process active. The `socket.ref()` method adds the socket back to the reference
		counting and restores the default behavior.
		
		Calling `socket.ref()` multiples times will have no additional effect.
		
		The `socket.ref()` method returns a reference to the socket so calls can be
		chained.
	**/
	function ref():Socket;
	/**
		Returns an object containing the `address`, `family`, and `port` of the remote
		endpoint. This method throws an `ERR_SOCKET_DGRAM_NOT_CONNECTED` exception
		if the socket is not connected.
	**/
	function remoteAddress():node.net.AddressInfo;
	/**
		Broadcasts a datagram on the socket.
		For connectionless sockets, the destination `port` and `address` must be
		specified. Connected sockets, on the other hand, will use their associated
		remote endpoint, so the `port` and `address` arguments must not be set.
		
		The `msg` argument contains the message to be sent.
		Depending on its type, different behavior can apply. If `msg` is a `Buffer`,
		any `TypedArray` or a `DataView`,
		the `offset` and `length` specify the offset within the `Buffer` where the
		message begins and the number of bytes in the message, respectively.
		If `msg` is a `String`, then it is automatically converted to a `Buffer` with `'utf8'` encoding. With messages that
		contain multi-byte characters, `offset` and `length` will be calculated with
		respect to `byte length` and not the character position.
		If `msg` is an array, `offset` and `length` must not be specified.
		
		The `address` argument is a string. If the value of `address` is a host name,
		DNS will be used to resolve the address of the host. If `address` is not
		provided or otherwise nullish, `'127.0.0.1'` (for `udp4` sockets) or `'::1'` (for `udp6` sockets) will be used by default.
		
		If the socket has not been previously bound with a call to `bind`, the socket
		is assigned a random port number and is bound to the "all interfaces" address
		(`'0.0.0.0'` for `udp4` sockets, `'::0'` for `udp6` sockets.)
		
		An optional `callback` function may be specified to as a way of reporting
		DNS errors or for determining when it is safe to reuse the `buf` object.
		DNS lookups delay the time to send for at least one tick of the
		Node.js event loop.
		
		The only way to know for sure that the datagram has been sent is by using a `callback`. If an error occurs and a `callback` is given, the error will be
		passed as the first argument to the `callback`. If a `callback` is not given,
		the error is emitted as an `'error'` event on the `socket` object.
		
		Offset and length are optional but both _must_ be set if either are used.
		They are supported only when the first argument is a `Buffer`, a `TypedArray`,
		or a `DataView`.
		
		This method throws `ERR_SOCKET_BAD_PORT` if called on an unbound socket.
		
		Example of sending a UDP packet to a port on `localhost`;
		
		```js
		import dgram from 'node:dgram';
		import { Buffer } from 'node:buffer';
		
		const message = Buffer.from('Some bytes');
		const client = dgram.createSocket('udp4');
		client.send(message, 41234, 'localhost', (err) => {
		  client.close();
		});
		```
		
		Example of sending a UDP packet composed of multiple buffers to a port on`127.0.0.1`;
		
		```js
		import dgram from 'node:dgram';
		import { Buffer } from 'node:buffer';
		
		const buf1 = Buffer.from('Some ');
		const buf2 = Buffer.from('bytes');
		const client = dgram.createSocket('udp4');
		client.send([buf1, buf2], 41234, (err) => {
		  client.close();
		});
		```
		
		Sending multiple buffers might be faster or slower depending on the
		application and operating system. Run benchmarks to
		determine the optimal strategy on a case-by-case basis. Generally speaking,
		however, sending multiple buffers is faster.
		
		Example of sending a UDP packet using a socket connected to a port on `localhost`:
		
		```js
		import dgram from 'node:dgram';
		import { Buffer } from 'node:buffer';
		
		const message = Buffer.from('Some bytes');
		const client = dgram.createSocket('udp4');
		client.connect(41234, 'localhost', (err) => {
		  client.send(message, (err) => {
		    client.close();
		  });
		});
		```
	**/
	@:overload(function(msg:ts.AnyOf14<String, haxe.ds.ReadOnlyArray<Dynamic>, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, ?port:Float, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	@:overload(function(msg:ts.AnyOf14<String, haxe.ds.ReadOnlyArray<Dynamic>, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	@:overload(function(msg:ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, offset:Float, length:Float, ?port:Float, ?address:String, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	@:overload(function(msg:ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, offset:Float, length:Float, ?port:Float, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	@:overload(function(msg:ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, offset:Float, length:Float, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	function send(msg:ts.AnyOf14<String, haxe.ds.ReadOnlyArray<Dynamic>, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, ?port:Float, ?address:String, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void;
	/**
		Sets or clears the `SO_BROADCAST` socket option. When set to `true`, UDP
		packets may be sent to a local interface's broadcast address.
		
		This method throws `EBADF` if called on an unbound socket.
	**/
	function setBroadcast(flag:Bool):Void;
	/**
		_All references to scope in this section are referring to [IPv6 Zone Indices](https://en.wikipedia.org/wiki/IPv6_address#Scoped_literal_IPv6_addresses), which are defined by [RFC
		4007](https://tools.ietf.org/html/rfc4007). In string form, an IP_
		_with a scope index is written as `'IP%scope'` where scope is an interface name_
		_or interface number._
		
		Sets the default outgoing multicast interface of the socket to a chosen
		interface or back to system interface selection. The `multicastInterface` must
		be a valid string representation of an IP from the socket's family.
		
		For IPv4 sockets, this should be the IP configured for the desired physical
		interface. All packets sent to multicast on the socket will be sent on the
		interface determined by the most recent successful use of this call.
		
		For IPv6 sockets, `multicastInterface` should include a scope to indicate the
		interface as in the examples that follow. In IPv6, individual `send` calls can
		also use explicit scope in addresses, so only packets sent to a multicast
		address without specifying an explicit scope are affected by the most recent
		successful use of this call.
		
		This method throws `EBADF` if called on an unbound socket.
		
		#### Example: IPv6 outgoing multicast interface
		
		On most systems, where scope format uses the interface name:
		
		```js
		const socket = dgram.createSocket('udp6');
		
		socket.bind(1234, () => {
		  socket.setMulticastInterface('::%eth1');
		});
		```
		
		On Windows, where scope format uses an interface number:
		
		```js
		const socket = dgram.createSocket('udp6');
		
		socket.bind(1234, () => {
		  socket.setMulticastInterface('::%2');
		});
		```
		
		#### Example: IPv4 outgoing multicast interface
		
		All systems use an IP of the host on the desired physical interface:
		
		```js
		const socket = dgram.createSocket('udp4');
		
		socket.bind(1234, () => {
		  socket.setMulticastInterface('10.0.0.2');
		});
		```
	**/
	function setMulticastInterface(multicastInterface:String):Void;
	/**
		Sets or clears the `IP_MULTICAST_LOOP` socket option. When set to `true`,
		multicast packets will also be received on the local interface.
		
		This method throws `EBADF` if called on an unbound socket.
	**/
	function setMulticastLoopback(flag:Bool):Bool;
	/**
		Sets the `IP_MULTICAST_TTL` socket option. While TTL generally stands for
		"Time to Live", in this context it specifies the number of IP hops that a
		packet is allowed to travel through, specifically for multicast traffic. Each
		router or gateway that forwards a packet decrements the TTL. If the TTL is
		decremented to 0 by a router, it will not be forwarded.
		
		The `ttl` argument may be between 0 and 255\. The default on most systems is `1`.
		
		This method throws `EBADF` if called on an unbound socket.
	**/
	function setMulticastTTL(ttl:Float):Float;
	/**
		Sets the `SO_RCVBUF` socket option. Sets the maximum socket receive buffer
		in bytes.
		
		This method throws `ERR_SOCKET_BUFFER_SIZE` if called on an unbound socket.
	**/
	function setRecvBufferSize(size:Float):Void;
	/**
		Sets the `SO_SNDBUF` socket option. Sets the maximum socket send buffer
		in bytes.
		
		This method throws `ERR_SOCKET_BUFFER_SIZE` if called on an unbound socket.
	**/
	function setSendBufferSize(size:Float):Void;
	/**
		Sets the `IP_TTL` socket option. While TTL generally stands for "Time to Live",
		in this context it specifies the number of IP hops that a packet is allowed to
		travel through. Each router or gateway that forwards a packet decrements the
		TTL. If the TTL is decremented to 0 by a router, it will not be forwarded.
		Changing TTL values is typically done for network probes or when multicasting.
		
		The `ttl` argument may be between 1 and 255\. The default on most systems
		is 64.
		
		This method throws `EBADF` if called on an unbound socket.
	**/
	function setTTL(ttl:Float):Float;
	/**
		By default, binding a socket will cause it to block the Node.js process from
		exiting as long as the socket is open. The `socket.unref()` method can be used
		to exclude the socket from the reference counting that keeps the Node.js
		process active, allowing the process to exit even if the socket is still
		listening.
		
		Calling `socket.unref()` multiple times will have no additional effect.
		
		The `socket.unref()` method returns a reference to the socket so calls can be
		chained.
	**/
	function unref():Socket;
	/**
		Tells the kernel to join a source-specific multicast channel at the given `sourceAddress` and `groupAddress`, using the `multicastInterface` with the `IP_ADD_SOURCE_MEMBERSHIP` socket
		option. If the `multicastInterface` argument
		is not specified, the operating system will choose one interface and will add
		membership to it. To add membership to every available interface, call `socket.addSourceSpecificMembership()` multiple times, once per interface.
		
		When called on an unbound socket, this method will implicitly bind to a random
		port, listening on all interfaces.
	**/
	function addSourceSpecificMembership(sourceAddress:String, groupAddress:String, ?multicastInterface:String):Void;
	/**
		Instructs the kernel to leave a source-specific multicast channel at the given `sourceAddress` and `groupAddress` using the `IP_DROP_SOURCE_MEMBERSHIP` socket option. This method is
		automatically called by the kernel when the
		socket is closed or the process terminates, so most apps will never have
		reason to call this.
		
		If `multicastInterface` is not specified, the operating system will attempt to
		drop membership on all valid interfaces.
	**/
	function dropSourceSpecificMembership(sourceAddress:String, groupAddress:String, ?multicastInterface:String):Void;
	/**
		events.EventEmitter
		1. close
		2. connect
		3. error
		4. listening
		5. message
	**/
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:node.buffer.NonSharedBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, msg:node.buffer.NonSharedBuffer, rinfo:RemoteInfo):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
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
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:node.buffer.NonSharedBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:node.buffer.NonSharedBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:node.buffer.NonSharedBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:node.buffer.NonSharedBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Socket;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Socket;
	static var prototype : Socket;
}