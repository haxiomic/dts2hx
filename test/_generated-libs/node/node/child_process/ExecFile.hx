package node.child_process;

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
@:jsRequire("child_process", "execFile") @valueModuleOnly extern class ExecFile {
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
	@:overload(function(file:String, args:Null<haxe.ds.ReadOnlyArray<String>>, ?callback:(error:Null<ExecFileException>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, options:ExecFileOptionsWithBufferEncoding, ?callback:(error:Null<ExecFileException>, stdout:node.buffer.NonSharedBuffer, stderr:node.buffer.NonSharedBuffer) -> Void):ChildProcess { })
	@:overload(function(file:String, args:Null<haxe.ds.ReadOnlyArray<String>>, options:ExecFileOptionsWithBufferEncoding, ?callback:(error:Null<ExecFileException>, stdout:node.buffer.NonSharedBuffer, stderr:node.buffer.NonSharedBuffer) -> Void):ChildProcess { })
	@:overload(function(file:String, options:ExecFileOptionsWithStringEncoding, ?callback:(error:Null<ExecFileException>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, args:Null<haxe.ds.ReadOnlyArray<String>>, options:ExecFileOptionsWithStringEncoding, ?callback:(error:Null<ExecFileException>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, options:Null<ExecFileOptions>, callback:Null<(error:Null<ExecFileException>, stdout:ts.AnyOf2<String, node.buffer.NonSharedBuffer>, stderr:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void>):ChildProcess { })
	@:overload(function(file:String, args:Null<haxe.ds.ReadOnlyArray<String>>, options:Null<ExecFileOptions>, callback:Null<(error:Null<ExecFileException>, stdout:ts.AnyOf2<String, node.buffer.NonSharedBuffer>, stderr:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void>):ChildProcess { })
	@:selfCall
	static function call(file:String, ?callback:(error:Null<ExecFileException>, stdout:String, stderr:String) -> Void):ChildProcess;
}