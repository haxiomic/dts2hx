package node.fs;

/**
	Asynchronously creates a directory.
	
	The callback is given a possible exception and, if `recursive` is `true`, the
	first directory path created, `(err[, path])`.`path` can still be `undefined` when `recursive` is `true`, if no directory was
	created (for instance, if it was previously created).
	
	The optional `options` argument can be an integer specifying `mode` (permission
	and sticky bits), or an object with a `mode` property and a `recursive` property indicating whether parent directories should be created. Calling `fs.mkdir()` when `path` is a directory that
	exists results in an error only
	when `recursive` is false. If `recursive` is false and the directory exists,
	an `EEXIST` error occurs.
	
	```js
	import { mkdir } from 'node:fs';
	
	// Create ./tmp/a/apple, regardless of whether ./tmp and ./tmp/a exist.
	mkdir('./tmp/a/apple', { recursive: true }, (err) => {
	  if (err) throw err;
	});
	```
	
	On Windows, using `fs.mkdir()` on the root directory even with recursion will
	result in an error:
	
	```js
	import { mkdir } from 'node:fs';
	
	mkdir('/', { recursive: true }, (err) => {
	  // => [Error: EPERM: operation not permitted, mkdir 'C:\']
	});
	```
	
	See the POSIX [`mkdir(2)`](http://man7.org/linux/man-pages/man2/mkdir.2.html) documentation for more details.
	
	Asynchronous mkdir(2) - create a directory.
	
	Asynchronous mkdir(2) - create a directory with a mode of `0o777`.
**/
@:jsRequire("fs", "mkdir") @valueModuleOnly extern class Mkdir {
	/**
		Asynchronously creates a directory.
		
		The callback is given a possible exception and, if `recursive` is `true`, the
		first directory path created, `(err[, path])`.`path` can still be `undefined` when `recursive` is `true`, if no directory was
		created (for instance, if it was previously created).
		
		The optional `options` argument can be an integer specifying `mode` (permission
		and sticky bits), or an object with a `mode` property and a `recursive` property indicating whether parent directories should be created. Calling `fs.mkdir()` when `path` is a directory that
		exists results in an error only
		when `recursive` is false. If `recursive` is false and the directory exists,
		an `EEXIST` error occurs.
		
		```js
		import { mkdir } from 'node:fs';
		
		// Create ./tmp/a/apple, regardless of whether ./tmp and ./tmp/a exist.
		mkdir('./tmp/a/apple', { recursive: true }, (err) => {
		  if (err) throw err;
		});
		```
		
		On Windows, using `fs.mkdir()` on the root directory even with recursion will
		result in an error:
		
		```js
		import { mkdir } from 'node:fs';
		
		mkdir('/', { recursive: true }, (err) => {
		  // => [Error: EPERM: operation not permitted, mkdir 'C:\']
		});
		```
		
		See the POSIX [`mkdir(2)`](http://man7.org/linux/man-pages/man2/mkdir.2.html) documentation for more details.
	**/
	@:overload(function(path:PathLike, options:Null<ts.AnyOf3<String, Float, MakeDirectoryOptions & { @:optional var recursive : Bool; }>>, callback:NoParamCallback):Void { })
	@:overload(function(path:PathLike, options:Null<ts.AnyOf3<String, Float, MakeDirectoryOptions>>, callback:ts.AnyOf2<(err:Null<global.nodejs.ErrnoException>) -> Void, (err:Null<global.nodejs.ErrnoException>, path:String) -> Void>):Void { })
	@:overload(function(path:PathLike, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathLike, options:MakeDirectoryOptions & { var recursive : Bool; }, callback:ts.AnyOf2<(err:Null<global.nodejs.ErrnoException>) -> Void, (err:Null<global.nodejs.ErrnoException>, path:String) -> Void>):Void;
}