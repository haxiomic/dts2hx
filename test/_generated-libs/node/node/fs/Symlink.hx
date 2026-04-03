package node.fs;

/**
	Creates the link called `path` pointing to `target`. No arguments other than a
	possible exception are given to the completion callback.
	
	See the POSIX [`symlink(2)`](http://man7.org/linux/man-pages/man2/symlink.2.html) documentation for more details.
	
	The `type` argument is only available on Windows and ignored on other platforms.
	It can be set to `'dir'`, `'file'`, or `'junction'`. If the `type` argument is
	not a string, Node.js will autodetect `target` type and use `'file'` or `'dir'`.
	If the `target` does not exist, `'file'` will be used. Windows junction points
	require the destination path to be absolute. When using `'junction'`, the`target` argument will automatically be normalized to absolute path. Junction
	points on NTFS volumes can only point to directories.
	
	Relative targets are relative to the link's parent directory.
	
	```js
	import { symlink } from 'node:fs';
	
	symlink('./mew', './mewtwo', callback);
	```
	
	The above example creates a symbolic link `mewtwo` which points to `mew` in the
	same directory:
	
	```bash
	$ tree .
	.
	├── mew
	└── mewtwo -> ./mew
	```
	
	Asynchronous symlink(2) - Create a new symbolic link to an existing file.
**/
@:jsRequire("fs", "symlink") @valueModuleOnly extern class Symlink {
	/**
		Creates the link called `path` pointing to `target`. No arguments other than a
		possible exception are given to the completion callback.
		
		See the POSIX [`symlink(2)`](http://man7.org/linux/man-pages/man2/symlink.2.html) documentation for more details.
		
		The `type` argument is only available on Windows and ignored on other platforms.
		It can be set to `'dir'`, `'file'`, or `'junction'`. If the `type` argument is
		not a string, Node.js will autodetect `target` type and use `'file'` or `'dir'`.
		If the `target` does not exist, `'file'` will be used. Windows junction points
		require the destination path to be absolute. When using `'junction'`, the`target` argument will automatically be normalized to absolute path. Junction
		points on NTFS volumes can only point to directories.
		
		Relative targets are relative to the link's parent directory.
		
		```js
		import { symlink } from 'node:fs';
		
		symlink('./mew', './mewtwo', callback);
		```
		
		The above example creates a symbolic link `mewtwo` which points to `mew` in the
		same directory:
		
		```bash
		$ tree .
		.
		├── mew
		└── mewtwo -> ./mew
		```
	**/
	@:overload(function(target:PathLike, path:PathLike, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(target:PathLike, path:PathLike, type:Null<node.fs.symlink.Type_>, callback:NoParamCallback):Void;
}