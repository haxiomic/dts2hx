package node.fs;

/**
	A class representing a directory stream.
	
	Created by
	{@link
	opendir
	}
	,
	{@link
	opendirSync
	}
	, or `fsPromises.opendir()`.
	
	```js
	import { opendir } from 'node:fs/promises';
	
	try {
	  const dir = await opendir('./');
	  for await (const dirent of dir)
	    console.log(dirent.name);
	} catch (err) {
	  console.error(err);
	}
	```
	
	When using the async iterator, the `fs.Dir` object will be automatically
	closed after the iterator exits.
**/
@:jsRequire("fs", "Dir") extern class Dir {
	function new();
	/**
		The read-only path of this directory as was provided to
		{@link
		opendir
		}
		,
		{@link
		opendirSync
		}
		, or `fsPromises.opendir()`.
	**/
	final path : String;
	/**
		Asynchronously close the directory's underlying resource handle.
		Subsequent reads will result in errors.
		
		A promise is returned that will be fulfilled after the resource has been
		closed.
	**/
	@:overload(function(cb:NoParamCallback):Void { })
	function close():js.lib.Promise<ts.Undefined>;
	/**
		Synchronously close the directory's underlying resource handle.
		Subsequent reads will result in errors.
	**/
	function closeSync():Void;
	/**
		Asynchronously read the next directory entry via [`readdir(3)`](http://man7.org/linux/man-pages/man3/readdir.3.html) as an `fs.Dirent`.
		
		A promise is returned that will be fulfilled with an `fs.Dirent`, or `null` if there are no more directory entries to read.
		
		Directory entries returned by this function are in no particular order as
		provided by the operating system's underlying directory mechanisms.
		Entries added or removed while iterating over the directory might not be
		included in the iteration results.
	**/
	@:overload(function(cb:(err:Null<global.nodejs.ErrnoException>, dirEnt:Null<Dirent<String>>) -> Void):Void { })
	function read():js.lib.Promise<Null<Dirent<String>>>;
	/**
		Synchronously read the next directory entry as an `fs.Dirent`. See the
		POSIX [`readdir(3)`](http://man7.org/linux/man-pages/man3/readdir.3.html) documentation for more detail.
		
		If there are no more directory entries to read, `null` will be returned.
		
		Directory entries returned by this function are in no particular order as
		provided by the operating system's underlying directory mechanisms.
		Entries added or removed while iterating over the directory might not be
		included in the iteration results.
	**/
	function readSync():Null<Dirent<String>>;
	static var prototype : Dir;
}