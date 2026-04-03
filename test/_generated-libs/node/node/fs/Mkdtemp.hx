package node.fs;

/**
	Creates a unique temporary directory.
	
	Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory. Due to platform
	inconsistencies, avoid trailing `X` characters in `prefix`. Some platforms,
	notably the BSDs, can return more than six random characters, and replace
	trailing `X` characters in `prefix` with random characters.
	
	The created directory path is passed as a string to the callback's second
	parameter.
	
	The optional `options` argument can be a string specifying an encoding, or an
	object with an `encoding` property specifying the character encoding to use.
	
	```js
	import { mkdtemp } from 'node:fs';
	import { join } from 'node:path';
	import { tmpdir } from 'node:os';
	
	mkdtemp(join(tmpdir(), 'foo-'), (err, directory) => {
	  if (err) throw err;
	  console.log(directory);
	  // Prints: /tmp/foo-itXde2 or C:\Users\...\AppData\Local\Temp\foo-itXde2
	});
	```
	
	The `fs.mkdtemp()` method will append the six randomly selected characters
	directly to the `prefix` string. For instance, given a directory `/tmp`, if the
	intention is to create a temporary directory _within_`/tmp`, the `prefix`must end with a trailing platform-specific path separator
	(`import { sep } from 'node:node:path'`).
	
	```js
	import { tmpdir } from 'node:os';
	import { mkdtemp } from 'node:fs';
	
	// The parent directory for the new temporary directory
	const tmpDir = tmpdir();
	
	// This method is *INCORRECT*:
	mkdtemp(tmpDir, (err, directory) => {
	  if (err) throw err;
	  console.log(directory);
	  // Will print something similar to `/tmpabc123`.
	  // A new temporary directory is created at the file system root
	  // rather than *within* the /tmp directory.
	});
	
	// This method is *CORRECT*:
	import { sep } from 'node:path';
	mkdtemp(`${tmpDir}${sep}`, (err, directory) => {
	  if (err) throw err;
	  console.log(directory);
	  // Will print something similar to `/tmp/abc123`.
	  // A new temporary directory is created within
	  // the /tmp directory.
	});
	```
	
	Asynchronously creates a unique temporary directory.
	Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
**/
@:jsRequire("fs", "mkdtemp") @valueModuleOnly extern class Mkdtemp {
	/**
		Creates a unique temporary directory.
		
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory. Due to platform
		inconsistencies, avoid trailing `X` characters in `prefix`. Some platforms,
		notably the BSDs, can return more than six random characters, and replace
		trailing `X` characters in `prefix` with random characters.
		
		The created directory path is passed as a string to the callback's second
		parameter.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use.
		
		```js
		import { mkdtemp } from 'node:fs';
		import { join } from 'node:path';
		import { tmpdir } from 'node:os';
		
		mkdtemp(join(tmpdir(), 'foo-'), (err, directory) => {
		  if (err) throw err;
		  console.log(directory);
		  // Prints: /tmp/foo-itXde2 or C:\Users\...\AppData\Local\Temp\foo-itXde2
		});
		```
		
		The `fs.mkdtemp()` method will append the six randomly selected characters
		directly to the `prefix` string. For instance, given a directory `/tmp`, if the
		intention is to create a temporary directory _within_`/tmp`, the `prefix`must end with a trailing platform-specific path separator
		(`import { sep } from 'node:node:path'`).
		
		```js
		import { tmpdir } from 'node:os';
		import { mkdtemp } from 'node:fs';
		
		// The parent directory for the new temporary directory
		const tmpDir = tmpdir();
		
		// This method is *INCORRECT*:
		mkdtemp(tmpDir, (err, directory) => {
		  if (err) throw err;
		  console.log(directory);
		  // Will print something similar to `/tmpabc123`.
		  // A new temporary directory is created at the file system root
		  // rather than *within* the /tmp directory.
		});
		
		// This method is *CORRECT*:
		import { sep } from 'node:path';
		mkdtemp(`${tmpDir}${sep}`, (err, directory) => {
		  if (err) throw err;
		  console.log(directory);
		  // Will print something similar to `/tmp/abc123`.
		  // A new temporary directory is created within
		  // the /tmp directory.
		});
		```
	**/
	@:overload(function(prefix:String, options:BufferEncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, folder:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(prefix:String, options:EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, folder:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Void { })
	@:overload(function(prefix:String, callback:(err:Null<global.nodejs.ErrnoException>, folder:String) -> Void):Void { })
	@:selfCall
	static function call(prefix:String, options:EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, folder:String) -> Void):Void;
}