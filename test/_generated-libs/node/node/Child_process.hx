package node;

/**
	The `node:child_process` module provides the ability to spawn subprocesses in
	a manner that is similar, but not identical, to [`popen(3)`](http://man7.org/linux/man-pages/man3/popen.3.html). This capability
	is primarily provided by the
	{@link
	spawn
	}
	function:
	
	```js
	import { spawn } from 'node:child_process';
	const ls = spawn('ls', ['-lh', '/usr']);
	
	ls.stdout.on('data', (data) => {
	  console.log(`stdout: ${data}`);
	});
	
	ls.stderr.on('data', (data) => {
	  console.error(`stderr: ${data}`);
	});
	
	ls.on('close', (code) => {
	  console.log(`child process exited with code ${code}`);
	});
	```
	
	By default, pipes for `stdin`, `stdout`, and `stderr` are established between
	the parent Node.js process and the spawned subprocess. These pipes have
	limited (and platform-specific) capacity. If the subprocess writes to
	stdout in excess of that limit without the output being captured, the
	subprocess blocks waiting for the pipe buffer to accept more data. This is
	identical to the behavior of pipes in the shell. Use the `{ stdio: 'ignore' }` option if the output will not be consumed.
	
	The command lookup is performed using the `options.env.PATH` environment
	variable if `env` is in the `options` object. Otherwise, `process.env.PATH` is
	used. If `options.env` is set without `PATH`, lookup on Unix is performed
	on a default search path search of `/usr/bin:/bin` (see your operating system's
	manual for execvpe/execvp), on Windows the current processes environment
	variable `PATH` is used.
	
	On Windows, environment variables are case-insensitive. Node.js
	lexicographically sorts the `env` keys and uses the first one that
	case-insensitively matches. Only first (in lexicographic order) entry will be
	passed to the subprocess. This might lead to issues on Windows when passing
	objects to the `env` option that have multiple variants of the same key, such as `PATH` and `Path`.
	
	The
	{@link
	spawn
	}
	method spawns the child process asynchronously,
	without blocking the Node.js event loop. The
	{@link
	spawnSync
	}
	function provides equivalent functionality in a synchronous manner that blocks
	the event loop until the spawned process either exits or is terminated.
	
	For convenience, the `node:child_process` module provides a handful of
	synchronous and asynchronous alternatives to
	{@link
	spawn
	}
	and
	{@link
	spawnSync
	}
	. Each of these alternatives are implemented on
	top of
	{@link
	spawn
	}
	or
	{@link
	spawnSync
	}
	.
	
	*
	{@link
	exec
	}
	: spawns a shell and runs a command within that
	shell, passing the `stdout` and `stderr` to a callback function when
	complete.
	*
	{@link
	execFile
	}
	: similar to
	{@link
	exec
	}
	except
	that it spawns the command directly without first spawning a shell by
	default.
	*
	{@link
	fork
	}
	: spawns a new Node.js process and invokes a
	specified module with an IPC communication channel established that allows
	sending messages between parent and child.
	*
	{@link
	execSync
	}
	: a synchronous version of
	{@link
	exec
	}
	that will block the Node.js event loop.
	*
	{@link
	execFileSync
	}
	: a synchronous version of
	{@link
	execFile
	}
	that will block the Node.js event loop.
	
	For certain use cases, such as automating shell scripts, the `synchronous counterparts` may be more convenient. In many cases, however,
	the synchronous methods can have significant impact on performance due to
	stalling the event loop while spawned processes complete.
**/
@:jsRequire("child_process") @valueModuleOnly extern class Child_process {
	/**
		The `child_process.spawn()` method spawns a new process using the given `command`, with command-line arguments in `args`. If omitted, `args` defaults
		to an empty array.
		
		**If the `shell` option is enabled, do not pass unsanitized user input to this**
		**function. Any input containing shell metacharacters may be used to trigger**
		**arbitrary command execution.**
		
		A third argument may be used to specify additional options, with these defaults:
		
		```js
		const defaults = {
		  cwd: undefined,
		  env: process.env,
		};
		```
		
		Use `cwd` to specify the working directory from which the process is spawned.
		If not given, the default is to inherit the current working directory. If given,
		but the path does not exist, the child process emits an `ENOENT` error
		and exits immediately. `ENOENT` is also emitted when the command
		does not exist.
		
		Use `env` to specify environment variables that will be visible to the new
		process, the default is `process.env`.
		
		`undefined` values in `env` will be ignored.
		
		Example of running `ls -lh /usr`, capturing `stdout`, `stderr`, and the
		exit code:
		
		```js
		import { spawn } from 'node:child_process';
		const ls = spawn('ls', ['-lh', '/usr']);
		
		ls.stdout.on('data', (data) => {
		  console.log(`stdout: ${data}`);
		});
		
		ls.stderr.on('data', (data) => {
		  console.error(`stderr: ${data}`);
		});
		
		ls.on('close', (code) => {
		  console.log(`child process exited with code ${code}`);
		});
		```
		
		Example: A very elaborate way to run `ps ax | grep ssh`
		
		```js
		import { spawn } from 'node:child_process';
		const ps = spawn('ps', ['ax']);
		const grep = spawn('grep', ['ssh']);
		
		ps.stdout.on('data', (data) => {
		  grep.stdin.write(data);
		});
		
		ps.stderr.on('data', (data) => {
		  console.error(`ps stderr: ${data}`);
		});
		
		ps.on('close', (code) => {
		  if (code !== 0) {
		    console.log(`ps process exited with code ${code}`);
		  }
		  grep.stdin.end();
		});
		
		grep.stdout.on('data', (data) => {
		  console.log(data.toString());
		});
		
		grep.stderr.on('data', (data) => {
		  console.error(`grep stderr: ${data}`);
		});
		
		grep.on('close', (code) => {
		  if (code !== 0) {
		    console.log(`grep process exited with code ${code}`);
		  }
		});
		```
		
		Example of checking for failed `spawn`:
		
		```js
		import { spawn } from 'node:child_process';
		const subprocess = spawn('bad_command');
		
		subprocess.on('error', (err) => {
		  console.error('Failed to start subprocess.');
		});
		```
		
		Certain platforms (macOS, Linux) will use the value of `argv[0]` for the process
		title while others (Windows, SunOS) will use `command`.
		
		Node.js overwrites `argv[0]` with `process.execPath` on startup, so `process.argv[0]` in a Node.js child process will not match the `argv0` parameter passed to `spawn` from the parent. Retrieve
		it with the `process.argv0` property instead.
		
		If the `signal` option is enabled, calling `.abort()` on the corresponding `AbortController` is similar to calling `.kill()` on the child process except
		the error passed to the callback will be an `AbortError`:
		
		```js
		import { spawn } from 'node:child_process';
		const controller = new AbortController();
		const { signal } = controller;
		const grep = spawn('grep', ['ssh'], { signal });
		grep.on('error', (err) => {
		  // This will be called with err being an AbortError if the controller aborts
		});
		controller.abort(); // Stops the child process
		```
	**/
	@:overload(function(command:String, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioPipe, node.child_process.StdioPipe, node.child_process.StdioPipe>):node.child_process.ChildProcessByStdio<node.stream.stream.Writable, node.stream.stream.Readable, node.stream.stream.Readable> { })
	@:overload(function(command:String, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioPipe, node.child_process.StdioPipe, node.child_process.StdioNull>):node.child_process.ChildProcessByStdio<node.stream.stream.Writable, node.stream.stream.Readable, Dynamic> { })
	@:overload(function(command:String, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioPipe, node.child_process.StdioNull, node.child_process.StdioPipe>):node.child_process.ChildProcessByStdio<node.stream.stream.Writable, Dynamic, node.stream.stream.Readable> { })
	@:overload(function(command:String, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioNull, node.child_process.StdioPipe, node.child_process.StdioPipe>):node.child_process.ChildProcessByStdio<Dynamic, node.stream.stream.Readable, node.stream.stream.Readable> { })
	@:overload(function(command:String, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioPipe, node.child_process.StdioNull, node.child_process.StdioNull>):node.child_process.ChildProcessByStdio<node.stream.stream.Writable, Dynamic, Dynamic> { })
	@:overload(function(command:String, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioNull, node.child_process.StdioPipe, node.child_process.StdioNull>):node.child_process.ChildProcessByStdio<Dynamic, node.stream.stream.Readable, Dynamic> { })
	@:overload(function(command:String, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioNull, node.child_process.StdioNull, node.child_process.StdioPipe>):node.child_process.ChildProcessByStdio<Dynamic, Dynamic, node.stream.stream.Readable> { })
	@:overload(function(command:String, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioNull, node.child_process.StdioNull, node.child_process.StdioNull>):node.child_process.ChildProcessByStdio<Dynamic, Dynamic, Dynamic> { })
	@:overload(function(command:String, options:node.child_process.SpawnOptions):node.child_process.ChildProcess { })
	@:overload(function(command:String, ?args:haxe.ds.ReadOnlyArray<String>, ?options:node.child_process.SpawnOptionsWithoutStdio):node.child_process.ChildProcessWithoutNullStreams { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioPipe, node.child_process.StdioPipe, node.child_process.StdioPipe>):node.child_process.ChildProcessByStdio<node.stream.stream.Writable, node.stream.stream.Readable, node.stream.stream.Readable> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioPipe, node.child_process.StdioPipe, node.child_process.StdioNull>):node.child_process.ChildProcessByStdio<node.stream.stream.Writable, node.stream.stream.Readable, Dynamic> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioPipe, node.child_process.StdioNull, node.child_process.StdioPipe>):node.child_process.ChildProcessByStdio<node.stream.stream.Writable, Dynamic, node.stream.stream.Readable> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioNull, node.child_process.StdioPipe, node.child_process.StdioPipe>):node.child_process.ChildProcessByStdio<Dynamic, node.stream.stream.Readable, node.stream.stream.Readable> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioPipe, node.child_process.StdioNull, node.child_process.StdioNull>):node.child_process.ChildProcessByStdio<node.stream.stream.Writable, Dynamic, Dynamic> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioNull, node.child_process.StdioPipe, node.child_process.StdioNull>):node.child_process.ChildProcessByStdio<Dynamic, node.stream.stream.Readable, Dynamic> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioNull, node.child_process.StdioNull, node.child_process.StdioPipe>):node.child_process.ChildProcessByStdio<Dynamic, Dynamic, node.stream.stream.Readable> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptionsWithStdioTuple<node.child_process.StdioNull, node.child_process.StdioNull, node.child_process.StdioNull>):node.child_process.ChildProcessByStdio<Dynamic, Dynamic, Dynamic> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnOptions):node.child_process.ChildProcess { })
	static function spawn(command:String, ?options:node.child_process.SpawnOptionsWithoutStdio):node.child_process.ChildProcessWithoutNullStreams;
	/**
		Spawns a shell then executes the `command` within that shell, buffering any
		generated output. The `command` string passed to the exec function is processed
		directly by the shell and special characters (vary based on [shell](https://en.wikipedia.org/wiki/List_of_command-line_interpreters))
		need to be dealt with accordingly:
		
		```js
		import { exec } from 'node:child_process';
		
		exec('"/path/to/test file/test.sh" arg1 arg2');
		// Double quotes are used so that the space in the path is not interpreted as
		// a delimiter of multiple arguments.
		
		exec('echo "The \\$HOME variable is $HOME"');
		// The $HOME variable is escaped in the first instance, but not in the second.
		```
		
		**Never pass unsanitized user input to this function. Any input containing shell**
		**metacharacters may be used to trigger arbitrary command execution.**
		
		If a `callback` function is provided, it is called with the arguments `(error, stdout, stderr)`. On success, `error` will be `null`. On error, `error` will be an instance of `Error`. The
		`error.code` property will be
		the exit code of the process. By convention, any exit code other than `0` indicates an error. `error.signal` will be the signal that terminated the
		process.
		
		The `stdout` and `stderr` arguments passed to the callback will contain the
		stdout and stderr output of the child process. By default, Node.js will decode
		the output as UTF-8 and pass strings to the callback. The `encoding` option
		can be used to specify the character encoding used to decode the stdout and
		stderr output. If `encoding` is `'buffer'`, or an unrecognized character
		encoding, `Buffer` objects will be passed to the callback instead.
		
		```js
		import { exec } from 'node:child_process';
		exec('cat *.js missing_file | wc -l', (error, stdout, stderr) => {
		  if (error) {
		    console.error(`exec error: ${error}`);
		    return;
		  }
		  console.log(`stdout: ${stdout}`);
		  console.error(`stderr: ${stderr}`);
		});
		```
		
		If `timeout` is greater than `0`, the parent will send the signal
		identified by the `killSignal` property (the default is `'SIGTERM'`) if the
		child runs longer than `timeout` milliseconds.
		
		Unlike the [`exec(3)`](http://man7.org/linux/man-pages/man3/exec.3.html) POSIX system call, `child_process.exec()` does not replace
		the existing process and uses a shell to execute the command.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a `Promise` for an `Object` with `stdout` and `stderr` properties. The returned `ChildProcess` instance is attached to the `Promise` as a `child` property. In
		case of an error (including any error resulting in an exit code other than 0), a
		rejected promise is returned, with the same `error` object given in the
		callback, but with two additional properties `stdout` and `stderr`.
		
		```js
		import util from 'node:util';
		import child_process from 'node:child_process';
		const exec = util.promisify(child_process.exec);
		
		async function lsExample() {
		  const { stdout, stderr } = await exec('ls');
		  console.log('stdout:', stdout);
		  console.error('stderr:', stderr);
		}
		lsExample();
		```
		
		If the `signal` option is enabled, calling `.abort()` on the corresponding `AbortController` is similar to calling `.kill()` on the child process except
		the error passed to the callback will be an `AbortError`:
		
		```js
		import { exec } from 'node:child_process';
		const controller = new AbortController();
		const { signal } = controller;
		const child = exec('grep ssh', { signal }, (error) => {
		  console.error(error); // an AbortError
		});
		controller.abort();
		```
	**/
	@:overload(function(command:String, options:node.child_process.ExecOptionsWithBufferEncoding, ?callback:(error:Null<node.child_process.ExecException>, stdout:node.buffer.NonSharedBuffer, stderr:node.buffer.NonSharedBuffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:node.child_process.ExecOptionsWithStringEncoding, ?callback:(error:Null<node.child_process.ExecException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:Null<node.child_process.ExecOptions>, ?callback:(error:Null<node.child_process.ExecException>, stdout:ts.AnyOf2<String, node.buffer.NonSharedBuffer>, stderr:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):node.child_process.ChildProcess { })
	static function exec(command:String, ?callback:(error:Null<node.child_process.ExecException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess;
	/**
		The `child_process.execFile()` function is similar to
		{@link
		exec
		}
		except that it does not spawn a shell by default. Rather, the specified
		executable `file` is spawned directly as a new process making it slightly more
		efficient than
		{@link
		exec
		}
		.
		
		The same options as
		{@link
		exec
		}
		are supported. Since a shell is
		not spawned, behaviors such as I/O redirection and file globbing are not
		supported.
		
		```js
		import { execFile } from 'node:child_process';
		const child = execFile('node', ['--version'], (error, stdout, stderr) => {
		  if (error) {
		    throw error;
		  }
		  console.log(stdout);
		});
		```
		
		The `stdout` and `stderr` arguments passed to the callback will contain the
		stdout and stderr output of the child process. By default, Node.js will decode
		the output as UTF-8 and pass strings to the callback. The `encoding` option
		can be used to specify the character encoding used to decode the stdout and
		stderr output. If `encoding` is `'buffer'`, or an unrecognized character
		encoding, `Buffer` objects will be passed to the callback instead.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a `Promise` for an `Object` with `stdout` and `stderr` properties. The returned `ChildProcess` instance is attached to the `Promise` as a `child` property. In
		case of an error (including any error resulting in an exit code other than 0), a
		rejected promise is returned, with the same `error` object given in the
		callback, but with two additional properties `stdout` and `stderr`.
		
		```js
		import util from 'node:util';
		const execFile = util.promisify(require('node:child_process').execFile);
		async function getVersion() {
		  const { stdout } = await execFile('node', ['--version']);
		  console.log(stdout);
		}
		getVersion();
		```
		
		**If the `shell` option is enabled, do not pass unsanitized user input to this**
		**function. Any input containing shell metacharacters may be used to trigger**
		**arbitrary command execution.**
		
		If the `signal` option is enabled, calling `.abort()` on the corresponding `AbortController` is similar to calling `.kill()` on the child process except
		the error passed to the callback will be an `AbortError`:
		
		```js
		import { execFile } from 'node:child_process';
		const controller = new AbortController();
		const { signal } = controller;
		const child = execFile('node', ['--version'], { signal }, (error) => {
		  console.error(error); // an AbortError
		});
		controller.abort();
		```
	**/
	@:overload(function(file:String, args:Null<haxe.ds.ReadOnlyArray<String>>, ?callback:(error:Null<node.child_process.ExecFileException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptionsWithBufferEncoding, ?callback:(error:Null<node.child_process.ExecFileException>, stdout:node.buffer.NonSharedBuffer, stderr:node.buffer.NonSharedBuffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<haxe.ds.ReadOnlyArray<String>>, options:node.child_process.ExecFileOptionsWithBufferEncoding, ?callback:(error:Null<node.child_process.ExecFileException>, stdout:node.buffer.NonSharedBuffer, stderr:node.buffer.NonSharedBuffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptionsWithStringEncoding, ?callback:(error:Null<node.child_process.ExecFileException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<haxe.ds.ReadOnlyArray<String>>, options:node.child_process.ExecFileOptionsWithStringEncoding, ?callback:(error:Null<node.child_process.ExecFileException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:Null<node.child_process.ExecFileOptions>, callback:Null<(error:Null<node.child_process.ExecFileException>, stdout:ts.AnyOf2<String, node.buffer.NonSharedBuffer>, stderr:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void>):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<haxe.ds.ReadOnlyArray<String>>, options:Null<node.child_process.ExecFileOptions>, callback:Null<(error:Null<node.child_process.ExecFileException>, stdout:ts.AnyOf2<String, node.buffer.NonSharedBuffer>, stderr:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void>):node.child_process.ChildProcess { })
	static function execFile(file:String, ?callback:(error:Null<node.child_process.ExecFileException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess;
	/**
		The `child_process.fork()` method is a special case of
		{@link
		spawn
		}
		used specifically to spawn new Node.js processes.
		Like
		{@link
		spawn
		}
		, a `ChildProcess` object is returned. The
		returned `ChildProcess` will have an additional communication channel
		built-in that allows messages to be passed back and forth between the parent and
		child. See `subprocess.send()` for details.
		
		Keep in mind that spawned Node.js child processes are
		independent of the parent with exception of the IPC communication channel
		that is established between the two. Each process has its own memory, with
		their own V8 instances. Because of the additional resource allocations
		required, spawning a large number of child Node.js processes is not
		recommended.
		
		By default, `child_process.fork()` will spawn new Node.js instances using the `process.execPath` of the parent process. The `execPath` property in the `options` object allows for an alternative
		execution path to be used.
		
		Node.js processes launched with a custom `execPath` will communicate with the
		parent process using the file descriptor (fd) identified using the
		environment variable `NODE_CHANNEL_FD` on the child process.
		
		Unlike the [`fork(2)`](http://man7.org/linux/man-pages/man2/fork.2.html) POSIX system call, `child_process.fork()` does not clone the
		current process.
		
		The `shell` option available in
		{@link
		spawn
		}
		is not supported by `child_process.fork()` and will be ignored if set.
		
		If the `signal` option is enabled, calling `.abort()` on the corresponding `AbortController` is similar to calling `.kill()` on the child process except
		the error passed to the callback will be an `AbortError`:
		
		```js
		if (process.argv[2] === 'child') {
		  setTimeout(() => {
		    console.log(`Hello from ${process.argv[2]}!`);
		  }, 1_000);
		} else {
		  import { fork } from 'node:child_process';
		  const controller = new AbortController();
		  const { signal } = controller;
		  const child = fork(__filename, ['child'], { signal });
		  child.on('error', (err) => {
		    // This will be called with err being an AbortError if the controller aborts
		  });
		  controller.abort(); // Stops the child process
		}
		```
	**/
	@:overload(function(modulePath:ts.AnyOf2<String, node.url.URL>, ?args:haxe.ds.ReadOnlyArray<String>, ?options:node.child_process.ForkOptions):node.child_process.ChildProcess { })
	static function fork(modulePath:ts.AnyOf2<String, node.url.URL>, ?options:node.child_process.ForkOptions):node.child_process.ChildProcess;
	/**
		The `child_process.spawnSync()` method is generally identical to
		{@link
		spawn
		}
		with the exception that the function will not return
		until the child process has fully closed. When a timeout has been encountered
		and `killSignal` is sent, the method won't return until the process has
		completely exited. If the process intercepts and handles the `SIGTERM` signal
		and doesn't exit, the parent process will wait until the child process has
		exited.
		
		**If the `shell` option is enabled, do not pass unsanitized user input to this**
		**function. Any input containing shell metacharacters may be used to trigger**
		**arbitrary command execution.**
	**/
	@:overload(function(command:String, options:node.child_process.SpawnSyncOptionsWithStringEncoding):node.child_process.SpawnSyncReturns<String> { })
	@:overload(function(command:String, options:node.child_process.SpawnSyncOptionsWithBufferEncoding):node.child_process.SpawnSyncReturns<node.buffer.NonSharedBuffer> { })
	@:overload(function(command:String, ?options:node.child_process.SpawnSyncOptions):node.child_process.SpawnSyncReturns<ts.AnyOf2<String, node.buffer.NonSharedBuffer>> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>):node.child_process.SpawnSyncReturns<node.buffer.NonSharedBuffer> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnSyncOptionsWithStringEncoding):node.child_process.SpawnSyncReturns<String> { })
	@:overload(function(command:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.SpawnSyncOptionsWithBufferEncoding):node.child_process.SpawnSyncReturns<node.buffer.NonSharedBuffer> { })
	@:overload(function(command:String, ?args:haxe.ds.ReadOnlyArray<String>, ?options:node.child_process.SpawnSyncOptions):node.child_process.SpawnSyncReturns<ts.AnyOf2<String, node.buffer.NonSharedBuffer>> { })
	static function spawnSync(command:String):node.child_process.SpawnSyncReturns<node.buffer.NonSharedBuffer>;
	/**
		The `child_process.execSync()` method is generally identical to
		{@link
		exec
		}
		with the exception that the method will not return
		until the child process has fully closed. When a timeout has been encountered
		and `killSignal` is sent, the method won't return until the process has
		completely exited. If the child process intercepts and handles the `SIGTERM` signal and doesn't exit, the parent process will wait until the child process
		has exited.
		
		If the process times out or has a non-zero exit code, this method will throw.
		The `Error` object will contain the entire result from
		{@link
		spawnSync
		}
		.
		
		**Never pass unsanitized user input to this function. Any input containing shell**
		**metacharacters may be used to trigger arbitrary command execution.**
	**/
	@:overload(function(command:String, options:node.child_process.ExecSyncOptionsWithStringEncoding):String { })
	@:overload(function(command:String, options:node.child_process.ExecSyncOptionsWithBufferEncoding):node.buffer.NonSharedBuffer { })
	@:overload(function(command:String, ?options:node.child_process.ExecSyncOptions):ts.AnyOf2<String, node.buffer.NonSharedBuffer> { })
	static function execSync(command:String):node.buffer.NonSharedBuffer;
	/**
		The `child_process.execFileSync()` method is generally identical to
		{@link
		execFile
		}
		with the exception that the method will not
		return until the child process has fully closed. When a timeout has been
		encountered and `killSignal` is sent, the method won't return until the process
		has completely exited.
		
		If the child process intercepts and handles the `SIGTERM` signal and
		does not exit, the parent process will still wait until the child process has
		exited.
		
		If the process times out or has a non-zero exit code, this method will throw an `Error` that will include the full result of the underlying
		{@link
		spawnSync
		}
		.
		
		**If the `shell` option is enabled, do not pass unsanitized user input to this**
		**function. Any input containing shell metacharacters may be used to trigger**
		**arbitrary command execution.**
	**/
	@:overload(function(file:String, options:node.child_process.ExecFileSyncOptionsWithStringEncoding):String { })
	@:overload(function(file:String, options:node.child_process.ExecFileSyncOptionsWithBufferEncoding):node.buffer.NonSharedBuffer { })
	@:overload(function(file:String, ?options:node.child_process.ExecFileSyncOptions):ts.AnyOf2<String, node.buffer.NonSharedBuffer> { })
	@:overload(function(file:String, args:haxe.ds.ReadOnlyArray<String>):node.buffer.NonSharedBuffer { })
	@:overload(function(file:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.ExecFileSyncOptionsWithStringEncoding):String { })
	@:overload(function(file:String, args:haxe.ds.ReadOnlyArray<String>, options:node.child_process.ExecFileSyncOptionsWithBufferEncoding):node.buffer.NonSharedBuffer { })
	@:overload(function(file:String, ?args:haxe.ds.ReadOnlyArray<String>, ?options:node.child_process.ExecFileSyncOptions):ts.AnyOf2<String, node.buffer.NonSharedBuffer> { })
	static function execFileSync(file:String):node.buffer.NonSharedBuffer;
}