package node.fs;

/**
	Truncates the file. No arguments other than a possible exception are
	given to the completion callback. A file descriptor can also be passed as the
	first argument. In this case, `fs.ftruncate()` is called.
	
	```js
	import { truncate } from 'node:fs';
	// Assuming that 'path/file.txt' is a regular file.
	truncate('path/file.txt', (err) => {
	  if (err) throw err;
	  console.log('path/file.txt was truncated');
	});
	```
	
	Passing a file descriptor is deprecated and may result in an error being thrown
	in the future.
	
	See the POSIX [`truncate(2)`](http://man7.org/linux/man-pages/man2/truncate.2.html) documentation for more details.
	
	Asynchronous truncate(2) - Truncate a file to a specified length.
**/
@:jsRequire("fs", "truncate") @valueModuleOnly extern class Truncate {
	/**
		Truncates the file. No arguments other than a possible exception are
		given to the completion callback. A file descriptor can also be passed as the
		first argument. In this case, `fs.ftruncate()` is called.
		
		```js
		import { truncate } from 'node:fs';
		// Assuming that 'path/file.txt' is a regular file.
		truncate('path/file.txt', (err) => {
		  if (err) throw err;
		  console.log('path/file.txt was truncated');
		});
		```
		
		Passing a file descriptor is deprecated and may result in an error being thrown
		in the future.
		
		See the POSIX [`truncate(2)`](http://man7.org/linux/man-pages/man2/truncate.2.html) documentation for more details.
	**/
	@:overload(function(path:PathLike, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathLike, len:Null<Float>, callback:NoParamCallback):Void;
}