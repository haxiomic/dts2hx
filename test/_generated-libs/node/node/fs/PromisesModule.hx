package node.fs;

@:jsRequire("fs", "promises") @valueModuleOnly extern class PromisesModule {
	/**
		Tests a user's permissions for the file or directory specified by `path`.
		The `mode` argument is an optional integer that specifies the accessibility
		checks to be performed. `mode` should be either the value `fs.constants.F_OK` or a mask consisting of the bitwise OR of any of `fs.constants.R_OK`, `fs.constants.W_OK`, and `fs.constants.X_OK`
		(e.g.`fs.constants.W_OK | fs.constants.R_OK`). Check `File access constants` for
		possible values of `mode`.
		
		If the accessibility check is successful, the promise is fulfilled with no
		value. If any of the accessibility checks fail, the promise is rejected
		with an [Error](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error) object. The following example checks if the file`/etc/passwd` can be read and
		written by the current process.
		
		```js
		import { access, constants } from 'node:fs/promises';
		
		try {
		  await access('/etc/passwd', constants.R_OK | constants.W_OK);
		  console.log('can access');
		} catch {
		  console.error('cannot access');
		}
		```
		
		Using `fsPromises.access()` to check for the accessibility of a file before
		calling `fsPromises.open()` is not recommended. Doing so introduces a race
		condition, since other processes may change the file's state between the two
		calls. Instead, user code should open/read/write the file directly and handle
		the error raised if the file is not accessible.
	**/
	static function access(path:PathLike, ?mode:Float):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously copies `src` to `dest`. By default, `dest` is overwritten if it
		already exists.
		
		No guarantees are made about the atomicity of the copy operation. If an
		error occurs after the destination file has been opened for writing, an attempt
		will be made to remove the destination.
		
		```js
		import { copyFile, constants } from 'node:fs/promises';
		
		try {
		  await copyFile('source.txt', 'destination.txt');
		  console.log('source.txt was copied to destination.txt');
		} catch {
		  console.error('The file could not be copied');
		}
		
		// By using COPYFILE_EXCL, the operation will fail if destination.txt exists.
		try {
		  await copyFile('source.txt', 'destination.txt', constants.COPYFILE_EXCL);
		  console.log('source.txt was copied to destination.txt');
		} catch {
		  console.error('The file could not be copied');
		}
		```
	**/
	static function copyFile(src:PathLike, dest:PathLike, ?mode:Float):js.lib.Promise<ts.Undefined>;
	/**
		Opens a `FileHandle`.
		
		Refer to the POSIX [`open(2)`](http://man7.org/linux/man-pages/man2/open.2.html) documentation for more detail.
		
		Some characters (`< > : " / \ | ? *`) are reserved under Windows as documented
		by [Naming Files, Paths, and Namespaces](https://docs.microsoft.com/en-us/windows/desktop/FileIO/naming-a-file). Under NTFS, if the filename contains
		a colon, Node.js will open a file system stream, as described by [this MSDN page](https://docs.microsoft.com/en-us/windows/desktop/FileIO/using-streams).
	**/
	static function open(path:PathLike, ?flags:ts.AnyOf2<String, Float>, ?mode:Mode):js.lib.Promise<node.fs.promises.FileHandle>;
	/**
		Renames `oldPath` to `newPath`.
	**/
	static function rename(oldPath:PathLike, newPath:PathLike):js.lib.Promise<ts.Undefined>;
	/**
		Truncates (shortens or extends the length) of the content at `path` to `len` bytes.
	**/
	static function truncate(path:PathLike, ?len:Float):js.lib.Promise<ts.Undefined>;
	/**
		Removes the directory identified by `path`.
		
		Using `fsPromises.rmdir()` on a file (not a directory) results in the
		promise being rejected with an `ENOENT` error on Windows and an `ENOTDIR` error on POSIX.
		
		To get a behavior similar to the `rm -rf` Unix command, use `fsPromises.rm()` with options `{ recursive: true, force: true }`.
	**/
	static function rmdir(path:PathLike, ?options:RmDirOptions):js.lib.Promise<ts.Undefined>;
	/**
		Removes files and directories (modeled on the standard POSIX `rm` utility).
	**/
	static function rm(path:PathLike, ?options:RmOptions):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously creates a directory.
		
		The optional `options` argument can be an integer specifying `mode` (permission
		and sticky bits), or an object with a `mode` property and a `recursive` property indicating whether parent directories should be created. Calling `fsPromises.mkdir()` when `path` is a directory
		that exists results in a
		rejection only when `recursive` is false.
		
		```js
		import { mkdir } from 'node:fs/promises';
		
		try {
		  const projectFolder = new URL('./test/project/', import.meta.url);
		  const createDir = await mkdir(projectFolder, { recursive: true });
		
		  console.log(`created ${createDir}`);
		} catch (err) {
		  console.error(err.message);
		}
		```
		
		Asynchronous mkdir(2) - create a directory.
	**/
	@:overload(function(path:PathLike, ?options:ts.AnyOf3<String, Float, MakeDirectoryOptions & { @:optional var recursive : Bool; }>):js.lib.Promise<ts.Undefined> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf3<String, Float, MakeDirectoryOptions>):js.lib.Promise<Null<String>> { })
	static function mkdir(path:PathLike, options:MakeDirectoryOptions & { var recursive : Bool; }):js.lib.Promise<Null<String>>;
	/**
		Reads the contents of a directory.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the filenames. If the `encoding` is set to `'buffer'`, the filenames returned
		will be passed as `Buffer` objects.
		
		If `options.withFileTypes` is set to `true`, the returned array will contain `fs.Dirent` objects.
		
		```js
		import { readdir } from 'node:fs/promises';
		
		try {
		  const files = await readdir(path);
		  for (const file of files)
		    console.log(file);
		} catch (err) {
		  console.error(err);
		}
		```
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>):js.lib.Promise<Array<node.buffer.NonSharedBuffer>> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions & { @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>):js.lib.Promise<ts.AnyOf2<Array<String>, Array<node.buffer.NonSharedBuffer>>> { })
	@:overload(function(path:PathLike, options:ObjectEncodingOptions & { var withFileTypes : Bool; @:optional var recursive : Bool; }):js.lib.Promise<Array<Dirent<String>>> { })
	@:overload(function(path:PathLike, options:{ var encoding : String; var withFileTypes : Bool; @:optional var recursive : Bool; }):js.lib.Promise<Array<Dirent<node.buffer.NonSharedBuffer>>> { })
	static function readdir(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions & { @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>):js.lib.Promise<Array<String>>;
	/**
		Reads the contents of the symbolic link referred to by `path`. See the POSIX [`readlink(2)`](http://man7.org/linux/man-pages/man2/readlink.2.html) documentation for more detail. The promise is
		fulfilled with the`linkString` upon success.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the link path returned. If the `encoding` is set to `'buffer'`, the link path
		returned will be passed as a `Buffer` object.
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:PathLike, options:BufferEncodingOption):js.lib.Promise<node.buffer.NonSharedBuffer> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions>):js.lib.Promise<ts.AnyOf2<String, node.buffer.NonSharedBuffer>> { })
	static function readlink(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions>):js.lib.Promise<String>;
	/**
		Creates a symbolic link.
		
		The `type` argument is only used on Windows platforms and can be one of `'dir'`, `'file'`, or `'junction'`. If the `type` argument is not a string, Node.js will
		autodetect `target` type and use `'file'` or `'dir'`. If the `target` does not
		exist, `'file'` will be used. Windows junction points require the destination
		path to be absolute. When using `'junction'`, the `target` argument will
		automatically be normalized to absolute path. Junction points on NTFS volumes
		can only point to directories.
	**/
	static function symlink(target:PathLike, path:PathLike, ?type:String):js.lib.Promise<ts.Undefined>;
	/**
		Equivalent to `fsPromises.stat()` unless `path` refers to a symbolic link,
		in which case the link itself is stat-ed, not the file that it refers to.
		Refer to the POSIX [`lstat(2)`](http://man7.org/linux/man-pages/man2/lstat.2.html) document for more detail.
	**/
	@:overload(function(path:PathLike, opts:StatOptions & { var bigint : Bool; }):js.lib.Promise<BigIntStats> { })
	@:overload(function(path:PathLike, ?opts:StatOptions):js.lib.Promise<ts.AnyOf2<Stats, BigIntStats>> { })
	static function lstat(path:PathLike, ?opts:StatOptions & { @:optional var bigint : Bool; }):js.lib.Promise<Stats>;
	@:overload(function(path:PathLike, opts:StatOptions & { var bigint : Bool; }):js.lib.Promise<BigIntStats> { })
	@:overload(function(path:PathLike, ?opts:StatOptions):js.lib.Promise<ts.AnyOf2<Stats, BigIntStats>> { })
	static function stat(path:PathLike, ?opts:StatOptions & { @:optional var bigint : Bool; }):js.lib.Promise<Stats>;
	@:overload(function(path:PathLike, opts:StatFsOptions & { var bigint : Bool; }):js.lib.Promise<BigIntStatsFs> { })
	@:overload(function(path:PathLike, ?opts:StatFsOptions):js.lib.Promise<ts.AnyOf2<StatsFs, BigIntStatsFs>> { })
	static function statfs(path:PathLike, ?opts:StatFsOptions & { @:optional var bigint : Bool; }):js.lib.Promise<StatsFs>;
	/**
		Creates a new link from the `existingPath` to the `newPath`. See the POSIX [`link(2)`](http://man7.org/linux/man-pages/man2/link.2.html) documentation for more detail.
	**/
	static function link(existingPath:PathLike, newPath:PathLike):js.lib.Promise<ts.Undefined>;
	/**
		If `path` refers to a symbolic link, then the link is removed without affecting
		the file or directory to which that link refers. If the `path` refers to a file
		path that is not a symbolic link, the file is deleted. See the POSIX [`unlink(2)`](http://man7.org/linux/man-pages/man2/unlink.2.html) documentation for more detail.
	**/
	static function unlink(path:PathLike):js.lib.Promise<ts.Undefined>;
	/**
		Changes the permissions of a file.
	**/
	static function chmod(path:PathLike, mode:Mode):js.lib.Promise<ts.Undefined>;
	/**
		Changes the permissions on a symbolic link.
		
		This method is only implemented on macOS.
	**/
	static function lchmod(path:PathLike, mode:Mode):js.lib.Promise<ts.Undefined>;
	/**
		Changes the ownership on a symbolic link.
	**/
	static function lchown(path:PathLike, uid:Float, gid:Float):js.lib.Promise<ts.Undefined>;
	/**
		Changes the access and modification times of a file in the same way as `fsPromises.utimes()`, with the difference that if the path refers to a
		symbolic link, then the link is not dereferenced: instead, the timestamps of
		the symbolic link itself are changed.
	**/
	static function lutimes(path:PathLike, atime:TimeLike, mtime:TimeLike):js.lib.Promise<ts.Undefined>;
	/**
		Changes the ownership of a file.
	**/
	static function chown(path:PathLike, uid:Float, gid:Float):js.lib.Promise<ts.Undefined>;
	/**
		Change the file system timestamps of the object referenced by `path`.
		
		The `atime` and `mtime` arguments follow these rules:
		
		* Values can be either numbers representing Unix epoch time, `Date`s, or a
		numeric string like `'123456789.0'`.
		* If the value can not be converted to a number, or is `NaN`, `Infinity`, or `-Infinity`, an `Error` will be thrown.
	**/
	static function utimes(path:PathLike, atime:TimeLike, mtime:TimeLike):js.lib.Promise<ts.Undefined>;
	/**
		Determines the actual location of `path` using the same semantics as the `fs.realpath.native()` function.
		
		Only paths that can be converted to UTF8 strings are supported.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the path. If the `encoding` is set to `'buffer'`, the path returned will be
		passed as a `Buffer` object.
		
		On Linux, when Node.js is linked against musl libc, the procfs file system must
		be mounted on `/proc` in order for this function to work. Glibc does not have
		this restriction.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:PathLike, options:BufferEncodingOption):js.lib.Promise<node.buffer.NonSharedBuffer> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions>):js.lib.Promise<ts.AnyOf2<String, node.buffer.NonSharedBuffer>> { })
	static function realpath(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions>):js.lib.Promise<String>;
	/**
		Creates a unique temporary directory. A unique directory name is generated by
		appending six random characters to the end of the provided `prefix`. Due to
		platform inconsistencies, avoid trailing `X` characters in `prefix`. Some
		platforms, notably the BSDs, can return more than six random characters, and
		replace trailing `X` characters in `prefix` with random characters.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use.
		
		```js
		import { mkdtemp } from 'node:fs/promises';
		import { join } from 'node:path';
		import { tmpdir } from 'node:os';
		
		try {
		  await mkdtemp(join(tmpdir(), 'foo-'));
		} catch (err) {
		  console.error(err);
		}
		```
		
		The `fsPromises.mkdtemp()` method will append the six randomly selected
		characters directly to the `prefix` string. For instance, given a directory `/tmp`, if the intention is to create a temporary directory _within_ `/tmp`, the `prefix` must end with a trailing
		platform-specific path separator
		(`import { sep } from 'node:node:path'`).
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:BufferEncodingOption):js.lib.Promise<node.buffer.NonSharedBuffer> { })
	@:overload(function(prefix:String, ?options:ts.AnyOf2<String, ObjectEncodingOptions>):js.lib.Promise<ts.AnyOf2<String, node.buffer.NonSharedBuffer>> { })
	static function mkdtemp(prefix:String, ?options:ts.AnyOf2<String, ObjectEncodingOptions>):js.lib.Promise<String>;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists. `data` can be a string, a buffer, an
		[AsyncIterable](https://tc39.github.io/ecma262/#sec-asynciterable-interface), or an
		[Iterable](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#The_iterable_protocol) object.
		
		The `encoding` option is ignored if `data` is a buffer.
		
		If `options` is a string, then it specifies the encoding.
		
		The `mode` option only affects the newly created file. See `fs.open()` for more details.
		
		Any specified `FileHandle` has to support writing.
		
		It is unsafe to use `fsPromises.writeFile()` multiple times on the same file
		without waiting for the promise to be settled.
		
		Similarly to `fsPromises.readFile` \- `fsPromises.writeFile` is a convenience
		method that performs multiple `write` calls internally to write the buffer
		passed to it. For performance sensitive code consider using `fs.createWriteStream()` or `filehandle.createWriteStream()`.
		
		It is possible to use an `AbortSignal` to cancel an `fsPromises.writeFile()`.
		Cancelation is "best effort", and some amount of data is likely still
		to be written.
		
		```js
		import { writeFile } from 'node:fs/promises';
		import { Buffer } from 'node:buffer';
		
		try {
		  const controller = new AbortController();
		  const { signal } = controller;
		  const data = new Uint8Array(Buffer.from('Hello Node.js'));
		  const promise = writeFile('message.txt', data, { signal });
		
		  // Abort the request before the promise settles.
		  controller.abort();
		
		  await promise;
		} catch (err) {
		  // When a request is aborted - err is an AbortError
		  console.error(err);
		}
		```
		
		Aborting an ongoing request does not abort individual operating
		system requests but rather the internal buffering `fs.writeFile` performs.
	**/
	static function writeFile(file:ts.AnyOf4<String, node.url.URL, node.buffer.Buffer<js.lib.ArrayBufferLike>, node.fs.promises.FileHandle>, data:ts.AnyOf16<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>, node.Stream, Iterable<ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>>, js.lib.AsyncIterable<ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, Dynamic, Dynamic>>, ?options:ts.AnyOf2<String, ObjectEncodingOptions & { @:optional var mode : Mode; @:optional var flag : OpenMode; /** If all data is successfully written to the file, and `flush`is `true`, `filehandle.sync()` is used to flush the data. **/ @:optional var flush : Bool; } & node.events.eventemitter.Abortable>):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously append data to a file, creating the file if it does not yet
		exist. `data` can be a string or a `Buffer`.
		
		If `options` is a string, then it specifies the `encoding`.
		
		The `mode` option only affects the newly created file. See `fs.open()` for more details.
		
		The `path` may be specified as a `FileHandle` that has been opened
		for appending (using `fsPromises.open()`).
	**/
	static function appendFile(path:ts.AnyOf4<String, node.url.URL, node.buffer.Buffer<js.lib.ArrayBufferLike>, node.fs.promises.FileHandle>, data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?options:ts.AnyOf2<String, ObjectEncodingOptions & node.fs.promises.FlagAndOpenMode & { @:optional var flush : Bool; }>):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously reads the entire contents of a file.
		
		If no encoding is specified (using `options.encoding`), the data is returned
		as a `Buffer` object. Otherwise, the data will be a string.
		
		If `options` is a string, then it specifies the encoding.
		
		When the `path` is a directory, the behavior of `fsPromises.readFile()` is
		platform-specific. On macOS, Linux, and Windows, the promise will be rejected
		with an error. On FreeBSD, a representation of the directory's contents will be
		returned.
		
		An example of reading a `package.json` file located in the same directory of the
		running code:
		
		```js
		import { readFile } from 'node:fs/promises';
		try {
		  const filePath = new URL('./package.json', import.meta.url);
		  const contents = await readFile(filePath, { encoding: 'utf8' });
		  console.log(contents);
		} catch (err) {
		  console.error(err.message);
		}
		```
		
		It is possible to abort an ongoing `readFile` using an `AbortSignal`. If a
		request is aborted the promise returned is rejected with an `AbortError`:
		
		```js
		import { readFile } from 'node:fs/promises';
		
		try {
		  const controller = new AbortController();
		  const { signal } = controller;
		  const promise = readFile(fileName, { signal });
		
		  // Abort the request before the promise settles.
		  controller.abort();
		
		  await promise;
		} catch (err) {
		  // When a request is aborted - err is an AbortError
		  console.error(err);
		}
		```
		
		Aborting an ongoing request does not abort individual operating
		system requests but rather the internal buffering `fs.readFile` performs.
		
		Any specified `FileHandle` has to support reading.
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, node.url.URL, node.buffer.Buffer<js.lib.ArrayBufferLike>, node.fs.promises.FileHandle>, options:ts.AnyOf2<String, { var encoding : global.nodejs.BufferEncoding; @:optional var flag : OpenMode; } & node.events.eventemitter.Abortable>):js.lib.Promise<String> { })
	@:overload(function(path:ts.AnyOf4<String, node.url.URL, node.buffer.Buffer<js.lib.ArrayBufferLike>, node.fs.promises.FileHandle>, ?options:ts.AnyOf2<String, ObjectEncodingOptions & node.events.eventemitter.Abortable & { @:optional var flag : OpenMode; }>):js.lib.Promise<ts.AnyOf2<String, node.buffer.NonSharedBuffer>> { })
	static function readFile(path:ts.AnyOf4<String, node.url.URL, node.buffer.Buffer<js.lib.ArrayBufferLike>, node.fs.promises.FileHandle>, ?options:{ @:optional var encoding : ts.Never; @:optional var flag : OpenMode; } & node.events.eventemitter.Abortable):js.lib.Promise<node.buffer.NonSharedBuffer>;
	/**
		Asynchronously open a directory for iterative scanning. See the POSIX [`opendir(3)`](http://man7.org/linux/man-pages/man3/opendir.3.html) documentation for more detail.
		
		Creates an `fs.Dir`, which contains all further functions for reading from
		and cleaning up the directory.
		
		The `encoding` option sets the encoding for the `path` while opening the
		directory and subsequent read operations.
		
		Example using async iteration:
		
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
	static function opendir(path:PathLike, ?options:OpenDirOptions):js.lib.Promise<Dir>;
	/**
		Returns an async iterator that watches for changes on `filename`, where `filename`is either a file or a directory.
		
		```js
		import { watch } from 'node:fs/promises';
		
		const ac = new AbortController();
		const { signal } = ac;
		setTimeout(() => ac.abort(), 10000);
		
		(async () => {
		  try {
		    const watcher = watch(__filename, { signal });
		    for await (const event of watcher)
		      console.log(event);
		  } catch (err) {
		    if (err.name === 'AbortError')
		      return;
		    throw err;
		  }
		})();
		```
		
		On most platforms, `'rename'` is emitted whenever a filename appears or
		disappears in the directory.
		
		All the `caveats` for `fs.watch()` also apply to `fsPromises.watch()`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
	**/
	@:overload(function(filename:PathLike, ?options:ts.AnyOf2<String, WatchOptions>):js.lib.AsyncIterable<node.fs.promises.FileChangeInfo<String>, Dynamic, Dynamic> { })
	@:overload(function(filename:PathLike, options:ts.AnyOf2<String, WatchOptions>):ts.AnyOf2<js.lib.AsyncIterable<node.fs.promises.FileChangeInfo<node.buffer.NonSharedBuffer>, Dynamic, Dynamic>, js.lib.AsyncIterable<node.fs.promises.FileChangeInfo<String>, Dynamic, Dynamic>> { })
	static function watch(filename:PathLike, options:ts.AnyOf2<String, WatchOptions & { var encoding : String; }>):js.lib.AsyncIterable<node.fs.promises.FileChangeInfo<node.buffer.NonSharedBuffer>, Dynamic, Dynamic>;
	/**
		Asynchronously copies the entire directory structure from `src` to `dest`,
		including subdirectories and files.
		
		When copying a directory to another directory, globs are not supported and
		behavior is similar to `cp dir1/ dir2/`.
	**/
	static function cp(source:ts.AnyOf2<String, js.html.URL>, destination:ts.AnyOf2<String, js.html.URL>, ?opts:CopyOptions):js.lib.Promise<ts.Undefined>;
	static final constants : {
		/**
			Constant for fs.access(). File is visible to the calling process.
		**/
		final F_OK : Float;
		/**
			Constant for fs.access(). File can be read by the calling process.
		**/
		final R_OK : Float;
		/**
			Constant for fs.access(). File can be written by the calling process.
		**/
		final W_OK : Float;
		/**
			Constant for fs.access(). File can be executed by the calling process.
		**/
		final X_OK : Float;
		/**
			Constant for fs.copyFile. Flag indicating the destination file should not be overwritten if it already exists.
		**/
		final COPYFILE_EXCL : Float;
		/**
			Constant for fs.copyFile. copy operation will attempt to create a copy-on-write reflink.
			If the underlying platform does not support copy-on-write, then a fallback copy mechanism is used.
		**/
		final COPYFILE_FICLONE : Float;
		/**
			Constant for fs.copyFile. Copy operation will attempt to create a copy-on-write reflink.
			If the underlying platform does not support copy-on-write, then the operation will fail with an error.
		**/
		final COPYFILE_FICLONE_FORCE : Float;
		/**
			Constant for fs.open(). Flag indicating to open a file for read-only access.
		**/
		final O_RDONLY : Float;
		/**
			Constant for fs.open(). Flag indicating to open a file for write-only access.
		**/
		final O_WRONLY : Float;
		/**
			Constant for fs.open(). Flag indicating to open a file for read-write access.
		**/
		final O_RDWR : Float;
		/**
			Constant for fs.open(). Flag indicating to create the file if it does not already exist.
		**/
		final O_CREAT : Float;
		/**
			Constant for fs.open(). Flag indicating that opening a file should fail if the O_CREAT flag is set and the file already exists.
		**/
		final O_EXCL : Float;
		/**
			Constant for fs.open(). Flag indicating that if path identifies a terminal device,
			opening the path shall not cause that terminal to become the controlling terminal for the process
			(if the process does not already have one).
		**/
		final O_NOCTTY : Float;
		/**
			Constant for fs.open(). Flag indicating that if the file exists and is a regular file, and the file is opened successfully for write access, its length shall be truncated to zero.
		**/
		final O_TRUNC : Float;
		/**
			Constant for fs.open(). Flag indicating that data will be appended to the end of the file.
		**/
		final O_APPEND : Float;
		/**
			Constant for fs.open(). Flag indicating that the open should fail if the path is not a directory.
		**/
		final O_DIRECTORY : Float;
		/**
			constant for fs.open().
			Flag indicating reading accesses to the file system will no longer result in
			an update to the atime information associated with the file.
			This flag is available on Linux operating systems only.
		**/
		final O_NOATIME : Float;
		/**
			Constant for fs.open(). Flag indicating that the open should fail if the path is a symbolic link.
		**/
		final O_NOFOLLOW : Float;
		/**
			Constant for fs.open(). Flag indicating that the file is opened for synchronous I/O.
		**/
		final O_SYNC : Float;
		/**
			Constant for fs.open(). Flag indicating that the file is opened for synchronous I/O with write operations waiting for data integrity.
		**/
		final O_DSYNC : Float;
		/**
			Constant for fs.open(). Flag indicating to open the symbolic link itself rather than the resource it is pointing to.
		**/
		final O_SYMLINK : Float;
		/**
			Constant for fs.open(). When set, an attempt will be made to minimize caching effects of file I/O.
		**/
		final O_DIRECT : Float;
		/**
			Constant for fs.open(). Flag indicating to open the file in nonblocking mode when possible.
		**/
		final O_NONBLOCK : Float;
		/**
			Constant for fs.Stats mode property for determining a file's type. Bit mask used to extract the file type code.
		**/
		final S_IFMT : Float;
		/**
			Constant for fs.Stats mode property for determining a file's type. File type constant for a regular file.
		**/
		final S_IFREG : Float;
		/**
			Constant for fs.Stats mode property for determining a file's type. File type constant for a directory.
		**/
		final S_IFDIR : Float;
		/**
			Constant for fs.Stats mode property for determining a file's type. File type constant for a character-oriented device file.
		**/
		final S_IFCHR : Float;
		/**
			Constant for fs.Stats mode property for determining a file's type. File type constant for a block-oriented device file.
		**/
		final S_IFBLK : Float;
		/**
			Constant for fs.Stats mode property for determining a file's type. File type constant for a FIFO/pipe.
		**/
		final S_IFIFO : Float;
		/**
			Constant for fs.Stats mode property for determining a file's type. File type constant for a symbolic link.
		**/
		final S_IFLNK : Float;
		/**
			Constant for fs.Stats mode property for determining a file's type. File type constant for a socket.
		**/
		final S_IFSOCK : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable, writable and executable by owner.
		**/
		final S_IRWXU : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable by owner.
		**/
		final S_IRUSR : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating writable by owner.
		**/
		final S_IWUSR : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating executable by owner.
		**/
		final S_IXUSR : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable, writable and executable by group.
		**/
		final S_IRWXG : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable by group.
		**/
		final S_IRGRP : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating writable by group.
		**/
		final S_IWGRP : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating executable by group.
		**/
		final S_IXGRP : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable, writable and executable by others.
		**/
		final S_IRWXO : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable by others.
		**/
		final S_IROTH : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating writable by others.
		**/
		final S_IWOTH : Float;
		/**
			Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating executable by others.
		**/
		final S_IXOTH : Float;
		/**
			When set, a memory file mapping is used to access the file. This flag
			is available on Windows operating systems only. On other operating systems,
			this flag is ignored.
		**/
		final UV_FS_O_FILEMAP : Float;
	};
}