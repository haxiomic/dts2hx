package node.fs;

/**
	Asynchronously rename file at `oldPath` to the pathname provided
	as `newPath`. In the case that `newPath` already exists, it will
	be overwritten. If there is a directory at `newPath`, an error will
	be raised instead. No arguments other than a possible exception are
	given to the completion callback.
	
	See also: [`rename(2)`](http://man7.org/linux/man-pages/man2/rename.2.html).
	
	```js
	import { rename } from 'node:fs';
	
	rename('oldFile.txt', 'newFile.txt', (err) => {
	  if (err) throw err;
	  console.log('Rename complete!');
	});
	```
**/
@:jsRequire("fs", "rename") @valueModuleOnly extern class Rename {
	/**
		Asynchronously rename file at `oldPath` to the pathname provided
		as `newPath`. In the case that `newPath` already exists, it will
		be overwritten. If there is a directory at `newPath`, an error will
		be raised instead. No arguments other than a possible exception are
		given to the completion callback.
		
		See also: [`rename(2)`](http://man7.org/linux/man-pages/man2/rename.2.html).
		
		```js
		import { rename } from 'node:fs';
		
		rename('oldFile.txt', 'newFile.txt', (err) => {
		  if (err) throw err;
		  console.log('Rename complete!');
		});
		```
	**/
	@:selfCall
	static function call(oldPath:PathLike, newPath:PathLike, callback:NoParamCallback):Void;
}