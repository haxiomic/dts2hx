package node.fs;

/**
	Asynchronously append data to a file, creating the file if it does not yet
	exist. `data` can be a string or a `Buffer`.
	
	The `mode` option only affects the newly created file. See
	{@link
	open
	}
	for more details.
	
	```js
	import { appendFile } from 'node:fs';
	
	appendFile('message.txt', 'data to append', (err) => {
	  if (err) throw err;
	  console.log('The "data to append" was appended to file!');
	});
	```
	
	If `options` is a string, then it specifies the encoding:
	
	```js
	import { appendFile } from 'node:fs';
	
	appendFile('message.txt', 'data to append', 'utf8', callback);
	```
	
	The `path` may be specified as a numeric file descriptor that has been opened
	for appending (using `fs.open()` or `fs.openSync()`). The file descriptor will
	not be closed automatically.
	
	```js
	import { open, close, appendFile } from 'node:fs';
	
	function closeFd(fd) {
	  close(fd, (err) => {
	    if (err) throw err;
	  });
	}
	
	open('message.txt', 'a', (err, fd) => {
	  if (err) throw err;
	
	  try {
	    appendFile(fd, 'data to append', 'utf8', (err) => {
	      closeFd(fd);
	      if (err) throw err;
	    });
	  } catch (err) {
	    closeFd(fd);
	    throw err;
	  }
	});
	```
	
	Asynchronously append data to a file, creating the file if it does not exist.
**/
@:jsRequire("fs", "appendFile") @valueModuleOnly extern class AppendFile {
	/**
		Asynchronously append data to a file, creating the file if it does not yet
		exist. `data` can be a string or a `Buffer`.
		
		The `mode` option only affects the newly created file. See 
		{@link 
		open
		}
		 for more details.
		
		```js
		import { appendFile } from 'node:fs';
		
		appendFile('message.txt', 'data to append', (err) => {
		  if (err) throw err;
		  console.log('The "data to append" was appended to file!');
		});
		```
		
		If `options` is a string, then it specifies the encoding:
		
		```js
		import { appendFile } from 'node:fs';
		
		appendFile('message.txt', 'data to append', 'utf8', callback);
		```
		
		The `path` may be specified as a numeric file descriptor that has been opened
		for appending (using `fs.open()` or `fs.openSync()`). The file descriptor will
		not be closed automatically.
		
		```js
		import { open, close, appendFile } from 'node:fs';
		
		function closeFd(fd) {
		  close(fd, (err) => {
		    if (err) throw err;
		  });
		}
		
		open('message.txt', 'a', (err, fd) => {
		  if (err) throw err;
		
		  try {
		    appendFile(fd, 'data to append', 'utf8', (err) => {
		      closeFd(fd);
		      if (err) throw err;
		    });
		  } catch (err) {
		    closeFd(fd);
		    throw err;
		  }
		});
		```
	**/
	@:overload(function(file:PathOrFileDescriptor, data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathOrFileDescriptor, data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, options:WriteFileOptions, callback:NoParamCallback):Void;
}