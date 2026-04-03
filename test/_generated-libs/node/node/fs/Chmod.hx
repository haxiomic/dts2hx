package node.fs;

/**
	Asynchronously changes the permissions of a file. No arguments other than a
	possible exception are given to the completion callback.
	
	See the POSIX [`chmod(2)`](http://man7.org/linux/man-pages/man2/chmod.2.html) documentation for more detail.
	
	```js
	import { chmod } from 'node:fs';
	
	chmod('my_file.txt', 0o775, (err) => {
	  if (err) throw err;
	  console.log('The permissions for file "my_file.txt" have been changed!');
	});
	```
**/
@:jsRequire("fs", "chmod") @valueModuleOnly extern class Chmod {
	/**
		Asynchronously changes the permissions of a file. No arguments other than a
		possible exception are given to the completion callback.
		
		See the POSIX [`chmod(2)`](http://man7.org/linux/man-pages/man2/chmod.2.html) documentation for more detail.
		
		```js
		import { chmod } from 'node:fs';
		
		chmod('my_file.txt', 0o775, (err) => {
		  if (err) throw err;
		  console.log('The permissions for file "my_file.txt" have been changed!');
		});
		```
	**/
	@:selfCall
	static function call(path:PathLike, mode:Mode, callback:NoParamCallback):Void;
}