package node.fs;

/**
	Asynchronously removes a file or symbolic link. No arguments other than a
	possible exception are given to the completion callback.
	
	```js
	import { unlink } from 'node:fs';
	// Assuming that 'path/file.txt' is a regular file.
	unlink('path/file.txt', (err) => {
	  if (err) throw err;
	  console.log('path/file.txt was deleted');
	});
	```
	
	`fs.unlink()` will not work on a directory, empty or otherwise. To remove a
	directory, use
	{@link
	rmdir
	}
	.
	
	See the POSIX [`unlink(2)`](http://man7.org/linux/man-pages/man2/unlink.2.html) documentation for more details.
**/
@:jsRequire("fs", "unlink") @valueModuleOnly extern class Unlink {
	/**
		Asynchronously removes a file or symbolic link. No arguments other than a
		possible exception are given to the completion callback.
		
		```js
		import { unlink } from 'node:fs';
		// Assuming that 'path/file.txt' is a regular file.
		unlink('path/file.txt', (err) => {
		  if (err) throw err;
		  console.log('path/file.txt was deleted');
		});
		```
		
		`fs.unlink()` will not work on a directory, empty or otherwise. To remove a
		directory, use 
		{@link 
		rmdir
		}
		.
		
		See the POSIX [`unlink(2)`](http://man7.org/linux/man-pages/man2/unlink.2.html) documentation for more details.
	**/
	@:selfCall
	static function call(path:PathLike, callback:NoParamCallback):Void;
}