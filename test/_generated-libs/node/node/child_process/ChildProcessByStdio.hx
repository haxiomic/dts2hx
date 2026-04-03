package node.child_process;

typedef ChildProcessByStdio<I:(Null<node.stream.stream.Writable>), O:(Null<node.stream.stream.Readable>), E:(Null<node.stream.stream.Readable>)> = {
	/**
		A `Writable Stream` that represents the child process's `stdin`.
		
		If a child process waits to read all of its input, the child will not continue
		until this stream has been closed via `end()`.
		
		If the child was spawned with `stdio[0]` set to anything other than `'pipe'`,
		then this will be `null`.
		
		`subprocess.stdin` is an alias for `subprocess.stdio[0]`. Both properties will
		refer to the same value.
		
		The `subprocess.stdin` property can be `null` or `undefined` if the child process could not be successfully spawned.
	**/
	var stdin : I;
	/**
		A `Readable Stream` that represents the child process's `stdout`.
		
		If the child was spawned with `stdio[1]` set to anything other than `'pipe'`,
		then this will be `null`.
		
		`subprocess.stdout` is an alias for `subprocess.stdio[1]`. Both properties will
		refer to the same value.
		
		```js
		import { spawn } from 'node:child_process';
		
		const subprocess = spawn('ls');
		
		subprocess.stdout.on('data', (data) => {
		  console.log(`Received chunk ${data}`);
		});
		```
		
		The `subprocess.stdout` property can be `null` or `undefined` if the child process could not be successfully spawned.
	**/
	var stdout : O;
	/**
		A `Readable Stream` that represents the child process's `stderr`.
		
		If the child was spawned with `stdio[2]` set to anything other than `'pipe'`,
		then this will be `null`.
		
		`subprocess.stderr` is an alias for `subprocess.stdio[2]`. Both properties will
		refer to the same value.
		
		The `subprocess.stderr` property can be `null` or `undefined` if the child process could not be successfully spawned.
	**/
	var stderr : E;
	/**
		A sparse array of pipes to the child process, corresponding with positions in
		the `stdio` option passed to
		{@link
		spawn
		}
		that have been set
		to the value `'pipe'`. `subprocess.stdio[0]`, `subprocess.stdio[1]`, and `subprocess.stdio[2]` are also available as `subprocess.stdin`, `subprocess.stdout`, and `subprocess.stderr`,
		respectively.
		
		In the following example, only the child's fd `1` (stdout) is configured as a
		pipe, so only the parent's `subprocess.stdio[1]` is a stream, all other values
		in the array are `null`.
		
		```js
		import assert from 'node:assert';
		import fs from 'node:fs';
		import child_process from 'node:child_process';
		
		const subprocess = child_process.spawn('ls', {
		  stdio: [
		    0, // Use parent's stdin for child.
		    'pipe', // Pipe child's stdout to parent.
		    fs.openSync('err.out', 'w'), // Direct child's stderr to a file.
		  ],
		});
		
		assert.strictEqual(subprocess.stdio[0], null);
		assert.strictEqual(subprocess.stdio[0], subprocess.stdin);
		
		assert(subprocess.stdout);
		assert.strictEqual(subprocess.stdio[1], subprocess.stdout);
		
		assert.strictEqual(subprocess.stdio[2], null);
		assert.strictEqual(subprocess.stdio[2], subprocess.stderr);
		```
		
		The `subprocess.stdio` property can be `undefined` if the child process could
		not be successfully spawned.
	**/
	final stdio : ts.Tuple5<I, O, E, Null<ts.AnyOf2<node.stream.stream.Readable, node.stream.stream.Writable>>, Null<ts.AnyOf2<node.stream.stream.Readable, node.stream.stream.Writable>>>;
	/**
		The `subprocess.channel` property is a reference to the child's IPC channel. If
		no IPC channel exists, this property is `undefined`.
	**/
	@:optional
	final channel : Control;
	/**
		The `subprocess.killed` property indicates whether the child process
		successfully received a signal from `subprocess.kill()`. The `killed` property
		does not indicate that the child process has been terminated.
	**/
	final killed : Bool;
	/**
		Returns the process identifier (PID) of the child process. If the child process
		fails to spawn due to errors, then the value is `undefined` and `error` is
		emitted.
		
		```js
		import { spawn } from 'node:child_process';
		const grep = spawn('grep', ['ssh']);
		
		console.log(`Spawned child pid: ${grep.pid}`);
		grep.stdin.end();
		```
	**/
	@:optional
	final pid : Float;
	/**
		The `subprocess.connected` property indicates whether it is still possible to
		send and receive messages from a child process. When `subprocess.connected` is `false`, it is no longer possible to send or receive messages.
	**/
	final connected : Bool;
	/**
		The `subprocess.exitCode` property indicates the exit code of the child process.
		If the child process is still running, the field will be `null`.
	**/
	final exitCode : Null<Float>;
	/**
		The `subprocess.signalCode` property indicates the signal received by
		the child process if any, else `null`.
	**/
	final signalCode : Null<global.nodejs.Signals>;
	/**
		The `subprocess.spawnargs` property represents the full list of command-line
		arguments the child process was launched with.
	**/
	final spawnargs : Array<String>;
	/**
		The `subprocess.spawnfile` property indicates the executable file name of
		the child process that is launched.
		
		For
		{@link
		fork
		}
		, its value will be equal to `process.execPath`.
		For
		{@link
		spawn
		}
		, its value will be the name of
		the executable file.
		For
		{@link
		exec
		}
		,  its value will be the name of the shell
		in which the child process is launched.
	**/
	final spawnfile : String;
	/**
		The `subprocess.kill()` method sends a signal to the child process. If no
		argument is given, the process will be sent the `'SIGTERM'` signal. See [`signal(7)`](http://man7.org/linux/man-pages/man7/signal.7.html) for a list of available signals. This function
		returns `true` if [`kill(2)`](http://man7.org/linux/man-pages/man2/kill.2.html) succeeds, and `false` otherwise.
		
		```js
		import { spawn } from 'node:child_process';
		const grep = spawn('grep', ['ssh']);
		
		grep.on('close', (code, signal) => {
		  console.log(
		    `child process terminated due to receipt of signal ${signal}`);
		});
		
		// Send SIGHUP to process.
		grep.kill('SIGHUP');
		```
		
		The `ChildProcess` object may emit an `'error'` event if the signal
		cannot be delivered. Sending a signal to a child process that has already exited
		is not an error but may have unforeseen consequences. Specifically, if the
		process identifier (PID) has been reassigned to another process, the signal will
		be delivered to that process instead which can have unexpected results.
		
		While the function is called `kill`, the signal delivered to the child process
		may not actually terminate the process.
		
		See [`kill(2)`](http://man7.org/linux/man-pages/man2/kill.2.html) for reference.
		
		On Windows, where POSIX signals do not exist, the `signal` argument will be
		ignored, and the process will be killed forcefully and abruptly (similar to `'SIGKILL'`).
		See `Signal Events` for more details.
		
		On Linux, child processes of child processes will not be terminated
		when attempting to kill their parent. This is likely to happen when running a
		new process in a shell or with the use of the `shell` option of `ChildProcess`:
		
		```js
		'use strict';
		import { spawn } from 'node:child_process';
		
		const subprocess = spawn(
		  'sh',
		  [
		    '-c',
		    `node -e "setInterval(() => {
		      console.log(process.pid, 'is alive')
		    }, 500);"`,
		  ], {
		    stdio: ['inherit', 'inherit', 'inherit'],
		  },
		);
		
		setTimeout(() => {
		  subprocess.kill(); // Does not terminate the Node.js process in the shell.
		}, 2000);
		```
	**/
	function kill(?signal:ts.AnyOf2<Float, String>):Bool;
	/**
		When an IPC channel has been established between the parent and child (
		i.e. when using
		{@link
		fork
		}
		), the `subprocess.send()` method can
		be used to send messages to the child process. When the child process is a
		Node.js instance, these messages can be received via the `'message'` event.
		
		The message goes through serialization and parsing. The resulting
		message might not be the same as what is originally sent.
		
		For example, in the parent script:
		
		```js
		import cp from 'node:child_process';
		const n = cp.fork(`${__dirname}/sub.js`);
		
		n.on('message', (m) => {
		  console.log('PARENT got message:', m);
		});
		
		// Causes the child to print: CHILD got message: { hello: 'world' }
		n.send({ hello: 'world' });
		```
		
		And then the child script, `'sub.js'` might look like this:
		
		```js
		process.on('message', (m) => {
		  console.log('CHILD got message:', m);
		});
		
		// Causes the parent to print: PARENT got message: { foo: 'bar', baz: null }
		process.send({ foo: 'bar', baz: NaN });
		```
		
		Child Node.js processes will have a `process.send()` method of their own
		that allows the child to send messages back to the parent.
		
		There is a special case when sending a `{cmd: 'NODE_foo'}` message. Messages
		containing a `NODE_` prefix in the `cmd` property are reserved for use within
		Node.js core and will not be emitted in the child's `'message'` event. Rather, such messages are emitted using the `'internalMessage'` event and are consumed internally by Node.js.
		Applications should avoid using such messages or listening for `'internalMessage'` events as it is subject to change without notice.
		
		The optional `sendHandle` argument that may be passed to `subprocess.send()` is
		for passing a TCP server or socket object to the child process. The child will
		receive the object as the second argument passed to the callback function
		registered on the `'message'` event. Any data that is received and buffered in
		the socket will not be sent to the child. Sending IPC sockets is not supported on Windows.
		
		The optional `callback` is a function that is invoked after the message is
		sent but before the child may have received it. The function is called with a
		single argument: `null` on success, or an `Error` object on failure.
		
		If no `callback` function is provided and the message cannot be sent, an `'error'` event will be emitted by the `ChildProcess` object. This can
		happen, for instance, when the child process has already exited.
		
		`subprocess.send()` will return `false` if the channel has closed or when the
		backlog of unsent messages exceeds a threshold that makes it unwise to send
		more. Otherwise, the method returns `true`. The `callback` function can be
		used to implement flow control.
		
		#### Example: sending a server object
		
		The `sendHandle` argument can be used, for instance, to pass the handle of
		a TCP server object to the child process as illustrated in the example below:
		
		```js
		import child_process from 'node:child_process';
		const subprocess = child_process.fork('subprocess.js');
		
		// Open up the server object and send the handle.
		import net from 'node:net';
		const server = net.createServer();
		server.on('connection', (socket) => {
		  socket.end('handled by parent');
		});
		server.listen(1337, () => {
		  subprocess.send('server', server);
		});
		```
		
		The child would then receive the server object as:
		
		```js
		process.on('message', (m, server) => {
		  if (m === 'server') {
		    server.on('connection', (socket) => {
		      socket.end('handled by child');
		    });
		  }
		});
		```
		
		Once the server is now shared between the parent and child, some connections
		can be handled by the parent and some by the child.
		
		While the example above uses a server created using the `node:net` module, `node:dgram` module servers use exactly the same workflow with the exceptions of
		listening on a `'message'` event instead of `'connection'` and using `server.bind()` instead of `server.listen()`. This is, however, only
		supported on Unix platforms.
		
		#### Example: sending a socket object
		
		Similarly, the `sendHandler` argument can be used to pass the handle of a
		socket to the child process. The example below spawns two children that each
		handle connections with "normal" or "special" priority:
		
		```js
		import { fork } from 'node:child_process';
		const normal = fork('subprocess.js', ['normal']);
		const special = fork('subprocess.js', ['special']);
		
		// Open up the server and send sockets to child. Use pauseOnConnect to prevent
		// the sockets from being read before they are sent to the child process.
		import net from 'node:net';
		const server = net.createServer({ pauseOnConnect: true });
		server.on('connection', (socket) => {
		
		  // If this is special priority...
		  if (socket.remoteAddress === '74.125.127.100') {
		    special.send('socket', socket);
		    return;
		  }
		  // This is normal priority.
		  normal.send('socket', socket);
		});
		server.listen(1337);
		```
		
		The `subprocess.js` would receive the socket handle as the second argument
		passed to the event callback function:
		
		```js
		process.on('message', (m, socket) => {
		  if (m === 'socket') {
		    if (socket) {
		      // Check that the client socket exists.
		      // It is possible for the socket to be closed between the time it is
		      // sent and the time it is received in the child process.
		      socket.end(`Request handled with ${process.argv[2]} priority`);
		    }
		  }
		});
		```
		
		Do not use `.maxConnections` on a socket that has been passed to a subprocess.
		The parent cannot track when the socket is destroyed.
		
		Any `'message'` handlers in the subprocess should verify that `socket` exists,
		as the connection may have been closed during the time it takes to send the
		connection to the child.
	**/
	@:overload(function(message:Serializable, ?sendHandle:SendHandle, ?callback:(error:Null<js.lib.Error>) -> Void):Bool { })
	@:overload(function(message:Serializable, ?sendHandle:SendHandle, ?options:MessageOptions, ?callback:(error:Null<js.lib.Error>) -> Void):Bool { })
	function send(message:Serializable, ?callback:(error:Null<js.lib.Error>) -> Void):Bool;
	/**
		Closes the IPC channel between parent and child, allowing the child to exit
		gracefully once there are no other connections keeping it alive. After calling
		this method the `subprocess.connected` and `process.connected` properties in
		both the parent and child (respectively) will be set to `false`, and it will be
		no longer possible to pass messages between the processes.
		
		The `'disconnect'` event will be emitted when there are no messages in the
		process of being received. This will most often be triggered immediately after
		calling `subprocess.disconnect()`.
		
		When the child process is a Node.js instance (e.g. spawned using
		{@link
		fork
		}
		), the `process.disconnect()` method can be invoked
		within the child process to close the IPC channel as well.
	**/
	function disconnect():Void;
	/**
		By default, the parent will wait for the detached child to exit. To prevent the
		parent from waiting for a given `subprocess` to exit, use the `subprocess.unref()` method. Doing so will cause the parent's event loop to not
		include the child in its reference count, allowing the parent to exit
		independently of the child, unless there is an established IPC channel between
		the child and the parent.
		
		```js
		import { spawn } from 'node:child_process';
		
		const subprocess = spawn(process.argv[0], ['child_program.js'], {
		  detached: true,
		  stdio: 'ignore',
		});
		
		subprocess.unref();
		```
	**/
	function unref():Void;
	/**
		Calling `subprocess.ref()` after making a call to `subprocess.unref()` will
		restore the removed reference count for the child process, forcing the parent
		to wait for the child to exit before exiting itself.
		
		```js
		import { spawn } from 'node:child_process';
		
		const subprocess = spawn(process.argv[0], ['child_program.js'], {
		  detached: true,
		  stdio: 'ignore',
		});
		
		subprocess.unref();
		subprocess.ref();
		```
	**/
	function ref():Void;
	/**
		events.EventEmitter
		1. close
		2. disconnect
		3. error
		4. exit
		5. message
		6. spawn
	**/
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
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
	@:overload(function(event:String, code:Null<Float>, signal:Null<global.nodejs.Signals>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, code:Null<Float>, signal:Null<global.nodejs.Signals>):Bool { })
	@:overload(function(event:String, message:Serializable, sendHandle:SendHandle):Bool { })
	@:overload(function(event:String, listener:() -> Void):Bool { })
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
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
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
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
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
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
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
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
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
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):ChildProcessByStdio<I, O, E>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):ChildProcessByStdio<I, O, E>;
	/**
		Returns the current max listener value for the `EventEmitter` which is either
		set by `emitter.setMaxListeners(n)` or defaults to
		{@link
		EventEmitter.defaultMaxListeners
		}
		.
	**/
	function getMaxListeners():Float;
	/**
		Returns a copy of the array of listeners for the event named `eventName`.
		
		```js
		server.on('connection', (stream) => {
		  console.log('someone connected!');
		});
		console.log(util.inspect(server.listeners('connection')));
		// Prints: [ [Function] ]
		```
	**/
	function listeners<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	/**
		Returns a copy of the array of listeners for the event named `eventName`,
		including any wrappers (such as those created by `.once()`).
		
		```js
		import { EventEmitter } from 'node:events';
		const emitter = new EventEmitter();
		emitter.once('log', () => console.log('log once'));
		
		// Returns a new Array with a function `onceWrapper` which has a property
		// `listener` which contains the original listener bound above
		const listeners = emitter.rawListeners('log');
		const logFnWrapper = listeners[0];
		
		// Logs "log once" to the console and does not unbind the `once` event
		logFnWrapper.listener();
		
		// Logs "log once" to the console and removes the listener
		logFnWrapper();
		
		emitter.on('log', () => console.log('log persistently'));
		// Will return a new Array with a single function bound by `.on()` above
		const newListeners = emitter.rawListeners('log');
		
		// Logs "log persistently" twice
		newListeners[0]();
		emitter.emit('log');
		```
	**/
	function rawListeners<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	/**
		Returns the number of listeners listening for the event named `eventName`.
		If `listener` is provided, it will return how many times the listener is found
		in the list of the listeners of the event.
	**/
	function listenerCount<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, ?listener:haxe.Constraints.Function):Float;
	/**
		Returns an array listing the events for which the emitter has registered
		listeners. The values in the array are strings or `Symbol`s.
		
		```js
		import { EventEmitter } from 'node:events';
		
		const myEE = new EventEmitter();
		myEE.on('foo', () => {});
		myEE.on('bar', () => {});
		
		const sym = Symbol('symbol');
		myEE.on(sym, () => {});
		
		console.log(myEE.eventNames());
		// Prints: [ 'foo', 'bar', Symbol(symbol) ]
		```
	**/
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};