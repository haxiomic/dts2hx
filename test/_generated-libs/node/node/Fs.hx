package node;

/**
	The `node:fs` module enables interacting with the file system in a
	way modeled on standard POSIX functions.
	
	To use the promise-based APIs:
	
	```js
	import * as fs from 'node:fs/promises';
	```
	
	To use the callback and sync APIs:
	
	```js
	import * as fs from 'node:fs';
	```
	
	All file system operations have synchronous, callback, and promise-based
	forms, and are accessible using both CommonJS syntax and ES6 Modules (ESM).
**/
@:jsRequire("fs") @valueModuleOnly extern class Fs {
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
	static function rename(oldPath:node.fs.PathLike, newPath:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Renames the file from `oldPath` to `newPath`. Returns `undefined`.
		
		See the POSIX [`rename(2)`](http://man7.org/linux/man-pages/man2/rename.2.html) documentation for more details.
	**/
	static function renameSync(oldPath:node.fs.PathLike, newPath:node.fs.PathLike):Void;
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
	@:overload(function(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void { })
	static function truncate(path:node.fs.PathLike, len:Null<Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Truncates the file. Returns `undefined`. A file descriptor can also be
		passed as the first argument. In this case, `fs.ftruncateSync()` is called.
		
		Passing a file descriptor is deprecated and may result in an error being thrown
		in the future.
	**/
	static function truncateSync(path:node.fs.PathLike, ?len:Float):Void;
	/**
		Truncates the file descriptor. No arguments other than a possible exception are
		given to the completion callback.
		
		See the POSIX [`ftruncate(2)`](http://man7.org/linux/man-pages/man2/ftruncate.2.html) documentation for more detail.
		
		If the file referred to by the file descriptor was larger than `len` bytes, only
		the first `len` bytes will be retained in the file.
		
		For example, the following program retains only the first four bytes of the
		file:
		
		```js
		import { open, close, ftruncate } from 'node:fs';
		
		function closeFd(fd) {
		  close(fd, (err) => {
		    if (err) throw err;
		  });
		}
		
		open('temp.txt', 'r+', (err, fd) => {
		  if (err) throw err;
		
		  try {
		    ftruncate(fd, 4, (err) => {
		      closeFd(fd);
		      if (err) throw err;
		    });
		  } catch (err) {
		    closeFd(fd);
		    if (err) throw err;
		  }
		});
		```
		
		If the file previously was shorter than `len` bytes, it is extended, and the
		extended part is filled with null bytes (`'\0'`):
		
		If `len` is negative then `0` will be used.
		
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(fd:Float, callback:node.fs.NoParamCallback):Void { })
	static function ftruncate(fd:Float, len:Null<Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Truncates the file descriptor. Returns `undefined`.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		ftruncate
		}
		.
	**/
	static function ftruncateSync(fd:Float, ?len:Float):Void;
	/**
		Asynchronously changes owner and group of a file. No arguments other than a
		possible exception are given to the completion callback.
		
		See the POSIX [`chown(2)`](http://man7.org/linux/man-pages/man2/chown.2.html) documentation for more detail.
	**/
	static function chown(path:node.fs.PathLike, uid:Float, gid:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously changes owner and group of a file. Returns `undefined`.
		This is the synchronous version of
		{@link
		chown
		}
		.
		
		See the POSIX [`chown(2)`](http://man7.org/linux/man-pages/man2/chown.2.html) documentation for more detail.
	**/
	static function chownSync(path:node.fs.PathLike, uid:Float, gid:Float):Void;
	/**
		Sets the owner of the file. No arguments other than a possible exception are
		given to the completion callback.
		
		See the POSIX [`fchown(2)`](http://man7.org/linux/man-pages/man2/fchown.2.html) documentation for more detail.
	**/
	static function fchown(fd:Float, uid:Float, gid:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Sets the owner of the file. Returns `undefined`.
		
		See the POSIX [`fchown(2)`](http://man7.org/linux/man-pages/man2/fchown.2.html) documentation for more detail.
	**/
	static function fchownSync(fd:Float, uid:Float, gid:Float):Void;
	/**
		Set the owner of the symbolic link. No arguments other than a possible
		exception are given to the completion callback.
		
		See the POSIX [`lchown(2)`](http://man7.org/linux/man-pages/man2/lchown.2.html) documentation for more detail.
	**/
	static function lchown(path:node.fs.PathLike, uid:Float, gid:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Set the owner for the path. Returns `undefined`.
		
		See the POSIX [`lchown(2)`](http://man7.org/linux/man-pages/man2/lchown.2.html) documentation for more details.
	**/
	static function lchownSync(path:node.fs.PathLike, uid:Float, gid:Float):Void;
	/**
		Changes the access and modification times of a file in the same way as
		{@link
		utimes
		}
		, with the difference that if the path refers to a symbolic
		link, then the link is not dereferenced: instead, the timestamps of the
		symbolic link itself are changed.
		
		No arguments other than a possible exception are given to the completion
		callback.
	**/
	static function lutimes(path:node.fs.PathLike, atime:node.fs.TimeLike, mtime:node.fs.TimeLike, callback:node.fs.NoParamCallback):Void;
	/**
		Change the file system timestamps of the symbolic link referenced by `path`.
		Returns `undefined`, or throws an exception when parameters are incorrect or
		the operation fails. This is the synchronous version of
		{@link
		lutimes
		}
		.
	**/
	static function lutimesSync(path:node.fs.PathLike, atime:node.fs.TimeLike, mtime:node.fs.TimeLike):Void;
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
	static function chmod(path:node.fs.PathLike, mode:node.fs.Mode, callback:node.fs.NoParamCallback):Void;
	/**
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		chmod
		}
		.
		
		See the POSIX [`chmod(2)`](http://man7.org/linux/man-pages/man2/chmod.2.html) documentation for more detail.
	**/
	static function chmodSync(path:node.fs.PathLike, mode:node.fs.Mode):Void;
	/**
		Sets the permissions on the file. No arguments other than a possible exception
		are given to the completion callback.
		
		See the POSIX [`fchmod(2)`](http://man7.org/linux/man-pages/man2/fchmod.2.html) documentation for more detail.
	**/
	static function fchmod(fd:Float, mode:node.fs.Mode, callback:node.fs.NoParamCallback):Void;
	/**
		Sets the permissions on the file. Returns `undefined`.
		
		See the POSIX [`fchmod(2)`](http://man7.org/linux/man-pages/man2/fchmod.2.html) documentation for more detail.
	**/
	static function fchmodSync(fd:Float, mode:node.fs.Mode):Void;
	/**
		Changes the permissions on a symbolic link. No arguments other than a possible
		exception are given to the completion callback.
		
		This method is only implemented on macOS.
		
		See the POSIX [`lchmod(2)`](https://www.freebsd.org/cgi/man.cgi?query=lchmod&sektion=2) documentation for more detail.
	**/
	static function lchmod(path:node.fs.PathLike, mode:node.fs.Mode, callback:node.fs.NoParamCallback):Void;
	/**
		Changes the permissions on a symbolic link. Returns `undefined`.
		
		This method is only implemented on macOS.
		
		See the POSIX [`lchmod(2)`](https://www.freebsd.org/cgi/man.cgi?query=lchmod&sektion=2) documentation for more detail.
	**/
	static function lchmodSync(path:node.fs.PathLike, mode:node.fs.Mode):Void;
	/**
		Asynchronous [`stat(2)`](http://man7.org/linux/man-pages/man2/stat.2.html). The callback gets two arguments `(err, stats)` where`stats` is an `fs.Stats` object.
		
		In case of an error, the `err.code` will be one of `Common System Errors`.
		{@link
		stat
		}
		follows symbolic links. Use
		{@link
		lstat
		}
		to look at the
		links themselves.
		
		Using `fs.stat()` to check for the existence of a file before calling`fs.open()`, `fs.readFile()`, or `fs.writeFile()` is not recommended.
		Instead, user code should open/read/write the file directly and handle the
		error raised if the file is not available.
		
		To check if a file exists without manipulating it afterwards,
		{@link
		access
		}
		is recommended.
		
		For example, given the following directory structure:
		
		```text
		- txtDir
		-- file.txt
		- app.js
		```
		
		The next program will check for the stats of the given paths:
		
		```js
		import { stat } from 'node:fs';
		
		const pathsToCheck = ['./txtDir', './txtDir/file.txt'];
		
		for (let i = 0; i < pathsToCheck.length; i++) {
		  stat(pathsToCheck[i], (err, stats) => {
		    console.log(stats.isDirectory());
		    console.log(stats);
		  });
		}
		```
		
		The resulting output will resemble:
		
		```console
		true
		Stats {
		  dev: 16777220,
		  mode: 16877,
		  nlink: 3,
		  uid: 501,
		  gid: 20,
		  rdev: 0,
		  blksize: 4096,
		  ino: 14214262,
		  size: 96,
		  blocks: 0,
		  atimeMs: 1561174653071.963,
		  mtimeMs: 1561174614583.3518,
		  ctimeMs: 1561174626623.5366,
		  birthtimeMs: 1561174126937.2893,
		  atime: 2019-06-22T03:37:33.072Z,
		  mtime: 2019-06-22T03:36:54.583Z,
		  ctime: 2019-06-22T03:37:06.624Z,
		  birthtime: 2019-06-22T03:28:46.937Z
		}
		false
		Stats {
		  dev: 16777220,
		  mode: 33188,
		  nlink: 1,
		  uid: 501,
		  gid: 20,
		  rdev: 0,
		  blksize: 4096,
		  ino: 14214074,
		  size: 8,
		  blocks: 8,
		  atimeMs: 1561174616618.8555,
		  mtimeMs: 1561174614584,
		  ctimeMs: 1561174614583.8145,
		  birthtimeMs: 1561174007710.7478,
		  atime: 2019-06-22T03:36:56.619Z,
		  mtime: 2019-06-22T03:36:54.584Z,
		  ctime: 2019-06-22T03:36:54.584Z,
		  birthtime: 2019-06-22T03:26:47.711Z
		}
		```
	**/
	@:overload(function(path:node.fs.PathLike, options:Null<node.fs.StatOptions & { @:optional var bigint : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:{ var bigint : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.BigIntStats) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<node.fs.StatOptions>, callback:(err:Null<global.nodejs.ErrnoException>, stats:ts.AnyOf2<node.fs.Stats, node.fs.BigIntStats>) -> Void):Void { })
	static function stat(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void;
	/**
		Invokes the callback with the `fs.Stats` for the file descriptor.
		
		See the POSIX [`fstat(2)`](http://man7.org/linux/man-pages/man2/fstat.2.html) documentation for more detail.
	**/
	@:overload(function(fd:Float, options:Null<node.fs.StatOptions & { @:optional var bigint : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void { })
	@:overload(function(fd:Float, options:{ var bigint : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.BigIntStats) -> Void):Void { })
	@:overload(function(fd:Float, options:Null<node.fs.StatOptions>, callback:(err:Null<global.nodejs.ErrnoException>, stats:ts.AnyOf2<node.fs.Stats, node.fs.BigIntStats>) -> Void):Void { })
	static function fstat(fd:Float, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void;
	/**
		Retrieves the `fs.Stats` for the file descriptor.
		
		See the POSIX [`fstat(2)`](http://man7.org/linux/man-pages/man2/fstat.2.html) documentation for more detail.
	**/
	@:overload(function(fd:Float, options:{ var bigint : Bool; }):node.fs.BigIntStats { })
	@:overload(function(fd:Float, ?options:node.fs.StatOptions):ts.AnyOf2<node.fs.Stats, node.fs.BigIntStats> { })
	static function fstatSync(fd:Float, ?options:node.fs.StatOptions & { @:optional var bigint : Bool; }):node.fs.Stats;
	/**
		Retrieves the `fs.Stats` for the symbolic link referred to by the path.
		The callback gets two arguments `(err, stats)` where `stats` is a `fs.Stats` object. `lstat()` is identical to `stat()`, except that if `path` is a symbolic
		link, then the link itself is stat-ed, not the file that it refers to.
		
		See the POSIX [`lstat(2)`](http://man7.org/linux/man-pages/man2/lstat.2.html) documentation for more details.
	**/
	@:overload(function(path:node.fs.PathLike, options:Null<node.fs.StatOptions & { @:optional var bigint : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:{ var bigint : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.BigIntStats) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<node.fs.StatOptions>, callback:(err:Null<global.nodejs.ErrnoException>, stats:ts.AnyOf2<node.fs.Stats, node.fs.BigIntStats>) -> Void):Void { })
	static function lstat(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void;
	/**
		Asynchronous [`statfs(2)`](http://man7.org/linux/man-pages/man2/statfs.2.html). Returns information about the mounted file system which
		contains `path`. The callback gets two arguments `(err, stats)` where `stats`is an `fs.StatFs` object.
		
		In case of an error, the `err.code` will be one of `Common System Errors`.
	**/
	@:overload(function(path:node.fs.PathLike, options:Null<node.fs.StatFsOptions & { @:optional var bigint : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.StatsFs) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:{ var bigint : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.BigIntStatsFs) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<node.fs.StatFsOptions>, callback:(err:Null<global.nodejs.ErrnoException>, stats:ts.AnyOf2<node.fs.StatsFs, node.fs.BigIntStatsFs>) -> Void):Void { })
	static function statfs(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.StatsFs) -> Void):Void;
	/**
		Synchronous [`statfs(2)`](http://man7.org/linux/man-pages/man2/statfs.2.html). Returns information about the mounted file system which
		contains `path`.
		
		In case of an error, the `err.code` will be one of `Common System Errors`.
	**/
	@:overload(function(path:node.fs.PathLike, options:{ var bigint : Bool; }):node.fs.BigIntStatsFs { })
	@:overload(function(path:node.fs.PathLike, ?options:node.fs.StatFsOptions):ts.AnyOf2<node.fs.StatsFs, node.fs.BigIntStatsFs> { })
	static function statfsSync(path:node.fs.PathLike, ?options:node.fs.StatFsOptions & { @:optional var bigint : Bool; }):node.fs.StatsFs;
	/**
		Creates a new link from the `existingPath` to the `newPath`. See the POSIX [`link(2)`](http://man7.org/linux/man-pages/man2/link.2.html) documentation for more detail. No arguments other than
		a possible
		exception are given to the completion callback.
	**/
	static function link(existingPath:node.fs.PathLike, newPath:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Creates a new link from the `existingPath` to the `newPath`. See the POSIX [`link(2)`](http://man7.org/linux/man-pages/man2/link.2.html) documentation for more detail. Returns `undefined`.
	**/
	static function linkSync(existingPath:node.fs.PathLike, newPath:node.fs.PathLike):Void;
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
	@:overload(function(target:node.fs.PathLike, path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void { })
	static function symlink(target:node.fs.PathLike, path:node.fs.PathLike, type:Null<node.fs.symlink.Type_>, callback:node.fs.NoParamCallback):Void;
	/**
		Returns `undefined`.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		symlink
		}
		.
	**/
	static function symlinkSync(target:node.fs.PathLike, path:node.fs.PathLike, ?type:node.fs.symlink.Type_):Void;
	/**
		Reads the contents of the symbolic link referred to by `path`. The callback gets
		two arguments `(err, linkString)`.
		
		See the POSIX [`readlink(2)`](http://man7.org/linux/man-pages/man2/readlink.2.html) documentation for more details.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the link path passed to the callback. If the `encoding` is set to `'buffer'`,
		the link path returned will be passed as a `Buffer` object.
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.BufferEncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, linkString:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:node.fs.EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, linkString:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, linkString:String) -> Void):Void { })
	static function readlink(path:node.fs.PathLike, options:node.fs.EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, linkString:String) -> Void):Void;
	/**
		Returns the symbolic link's string value.
		
		See the POSIX [`readlink(2)`](http://man7.org/linux/man-pages/man2/readlink.2.html) documentation for more details.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the link path returned. If the `encoding` is set to `'buffer'`,
		the link path returned will be passed as a `Buffer` object.
		
		Synchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.BufferEncodingOption):node.buffer.NonSharedBuffer { })
	@:overload(function(path:node.fs.PathLike, ?options:node.fs.EncodingOption):ts.AnyOf2<String, node.buffer.NonSharedBuffer> { })
	static function readlinkSync(path:node.fs.PathLike, ?options:node.fs.EncodingOption):String;
	/**
		Asynchronously computes the canonical pathname by resolving `.`, `..`, and
		symbolic links.
		
		A canonical pathname is not necessarily unique. Hard links and bind mounts can
		expose a file system entity through many pathnames.
		
		This function behaves like [`realpath(3)`](http://man7.org/linux/man-pages/man3/realpath.3.html), with some exceptions:
		
		1. No case conversion is performed on case-insensitive file systems.
		2. The maximum number of symbolic links is platform-independent and generally
		(much) higher than what the native [`realpath(3)`](http://man7.org/linux/man-pages/man3/realpath.3.html) implementation supports.
		
		The `callback` gets two arguments `(err, resolvedPath)`. May use `process.cwd` to resolve relative paths.
		
		Only paths that can be converted to UTF8 strings are supported.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the path passed to the callback. If the `encoding` is set to `'buffer'`,
		the path returned will be passed as a `Buffer` object.
		
		If `path` resolves to a socket or a pipe, the function will return a system
		dependent name for that object.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.BufferEncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, resolvedPath:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:node.fs.EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, resolvedPath:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, resolvedPath:String) -> Void):Void { })
	static function realpath(path:node.fs.PathLike, options:node.fs.EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, resolvedPath:String) -> Void):Void;
	/**
		Returns the resolved pathname.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		realpath
		}
		.
		
		Synchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.BufferEncodingOption):node.buffer.NonSharedBuffer { })
	@:overload(function(path:node.fs.PathLike, ?options:node.fs.EncodingOption):ts.AnyOf2<String, node.buffer.NonSharedBuffer> { })
	static function realpathSync(path:node.fs.PathLike, ?options:node.fs.EncodingOption):String;
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
	static function unlink(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous [`unlink(2)`](http://man7.org/linux/man-pages/man2/unlink.2.html). Returns `undefined`.
	**/
	static function unlinkSync(path:node.fs.PathLike):Void;
	/**
		Asynchronous [`rmdir(2)`](http://man7.org/linux/man-pages/man2/rmdir.2.html). No arguments other than a possible exception are given
		to the completion callback.
		
		Using `fs.rmdir()` on a file (not a directory) results in an `ENOENT` error on
		Windows and an `ENOTDIR` error on POSIX.
		
		To get a behavior similar to the `rm -rf` Unix command, use
		{@link
		rm
		}
		with options `{ recursive: true, force: true }`.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.RmDirOptions, callback:node.fs.NoParamCallback):Void { })
	static function rmdir(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous [`rmdir(2)`](http://man7.org/linux/man-pages/man2/rmdir.2.html). Returns `undefined`.
		
		Using `fs.rmdirSync()` on a file (not a directory) results in an `ENOENT` error
		on Windows and an `ENOTDIR` error on POSIX.
		
		To get a behavior similar to the `rm -rf` Unix command, use
		{@link
		rmSync
		}
		with options `{ recursive: true, force: true }`.
	**/
	static function rmdirSync(path:node.fs.PathLike, ?options:node.fs.RmDirOptions):Void;
	/**
		Asynchronously removes files and directories (modeled on the standard POSIX `rm` utility). No arguments other than a possible exception are given to the
		completion callback.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.RmOptions, callback:node.fs.NoParamCallback):Void { })
	static function rm(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously removes files and directories (modeled on the standard POSIX `rm` utility). Returns `undefined`.
	**/
	static function rmSync(path:node.fs.PathLike, ?options:node.fs.RmOptions):Void;
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
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf3<String, Float, { /** Indicates whether parent folders should be created.If a folder was created, the path to the first created folder will be returned. **/ @:optional var recursive : Bool; /** A file mode. If a string is passed, it is parsed as an octal integer. If not specified **/ @:optional var mode : node.fs.Mode; }>>, callback:node.fs.NoParamCallback):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf3<String, Float, node.fs.MakeDirectoryOptions>>, callback:ts.AnyOf2<(err:Null<global.nodejs.ErrnoException>) -> Void, (err:Null<global.nodejs.ErrnoException>, path:String) -> Void>):Void { })
	@:overload(function(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void { })
	static function mkdir(path:node.fs.PathLike, options:{ /** Indicates whether parent folders should be created.If a folder was created, the path to the first created folder will be returned. **/ var recursive : Bool; /** A file mode. If a string is passed, it is parsed as an octal integer. If not specified **/ @:optional var mode : node.fs.Mode; }, callback:ts.AnyOf2<(err:Null<global.nodejs.ErrnoException>) -> Void, (err:Null<global.nodejs.ErrnoException>, path:String) -> Void>):Void;
	/**
		Synchronously creates a directory. Returns `undefined`, or if `recursive` is `true`, the first directory path created.
		This is the synchronous version of
		{@link
		mkdir
		}
		.
		
		See the POSIX [`mkdir(2)`](http://man7.org/linux/man-pages/man2/mkdir.2.html) documentation for more details.
		
		Synchronous mkdir(2) - create a directory.
	**/
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf3<String, Float, { /** Indicates whether parent folders should be created.If a folder was created, the path to the first created folder will be returned. **/ @:optional var recursive : Bool; /** A file mode. If a string is passed, it is parsed as an octal integer. If not specified **/ @:optional var mode : node.fs.Mode; }>):Void { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf3<String, Float, node.fs.MakeDirectoryOptions>):Null<String> { })
	static function mkdirSync(path:node.fs.PathLike, options:{ /** Indicates whether parent folders should be created.If a folder was created, the path to the first created folder will be returned. **/ var recursive : Bool; /** A file mode. If a string is passed, it is parsed as an octal integer. If not specified **/ @:optional var mode : node.fs.Mode; }):Null<String>;
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
	@:overload(function(prefix:String, options:node.fs.BufferEncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, folder:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(prefix:String, options:node.fs.EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, folder:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Void { })
	@:overload(function(prefix:String, callback:(err:Null<global.nodejs.ErrnoException>, folder:String) -> Void):Void { })
	static function mkdtemp(prefix:String, options:node.fs.EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, folder:String) -> Void):Void;
	/**
		Returns the created directory path.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		mkdtemp
		}
		.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use.
		
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:node.fs.BufferEncodingOption):node.buffer.NonSharedBuffer { })
	@:overload(function(prefix:String, ?options:node.fs.EncodingOption):ts.AnyOf2<String, node.buffer.NonSharedBuffer> { })
	static function mkdtempSync(prefix:String, ?options:node.fs.EncodingOption):String;
	/**
		Reads the contents of a directory. The callback gets two arguments `(err, files)` where `files` is an array of the names of the files in the directory excluding `'.'` and `'..'`.
		
		See the POSIX [`readdir(3)`](http://man7.org/linux/man-pages/man3/readdir.3.html) documentation for more details.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the filenames passed to the callback. If the `encoding` is set to `'buffer'`,
		the filenames returned will be passed as `Buffer` objects.
		
		If `options.withFileTypes` is set to `true`, the `files` array will contain `fs.Dirent` objects.
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<node.buffer.NonSharedBuffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, node.fs.ObjectEncodingOptions & { @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>>, callback:(err:Null<global.nodejs.ErrnoException>, files:ts.AnyOf2<Array<String>, Array<node.buffer.NonSharedBuffer>>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<String>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:node.fs.ObjectEncodingOptions & { var withFileTypes : Bool; @:optional var recursive : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<node.fs.Dirent<String>>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:{ var encoding : String; var withFileTypes : Bool; @:optional var recursive : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<node.fs.Dirent<node.buffer.NonSharedBuffer>>) -> Void):Void { })
	static function readdir(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, { var encoding : Null<global.nodejs.BufferEncoding>; @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>>, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<String>) -> Void):Void;
	/**
		Reads the contents of the directory.
		
		See the POSIX [`readdir(3)`](http://man7.org/linux/man-pages/man3/readdir.3.html) documentation for more details.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the filenames returned. If the `encoding` is set to `'buffer'`,
		the filenames returned will be passed as `Buffer` objects.
		
		If `options.withFileTypes` is set to `true`, the result will contain `fs.Dirent` objects.
		
		Synchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>):Array<node.buffer.NonSharedBuffer> { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & { @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>):ts.AnyOf2<Array<String>, Array<node.buffer.NonSharedBuffer>> { })
	@:overload(function(path:node.fs.PathLike, options:node.fs.ObjectEncodingOptions & { var withFileTypes : Bool; @:optional var recursive : Bool; }):Array<node.fs.Dirent<String>> { })
	@:overload(function(path:node.fs.PathLike, options:{ var encoding : String; var withFileTypes : Bool; @:optional var recursive : Bool; }):Array<node.fs.Dirent<node.buffer.NonSharedBuffer>> { })
	static function readdirSync(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { var encoding : Null<global.nodejs.BufferEncoding>; @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>):Array<String>;
	/**
		Closes the file descriptor. No arguments other than a possible exception are
		given to the completion callback.
		
		Calling `fs.close()` on any file descriptor (`fd`) that is currently in use
		through any other `fs` operation may lead to undefined behavior.
		
		See the POSIX [`close(2)`](http://man7.org/linux/man-pages/man2/close.2.html) documentation for more detail.
	**/
	static function close(fd:Float, ?callback:node.fs.NoParamCallback):Void;
	/**
		Closes the file descriptor. Returns `undefined`.
		
		Calling `fs.closeSync()` on any file descriptor (`fd`) that is currently in use
		through any other `fs` operation may lead to undefined behavior.
		
		See the POSIX [`close(2)`](http://man7.org/linux/man-pages/man2/close.2.html) documentation for more detail.
	**/
	static function closeSync(fd:Float):Void;
	/**
		Asynchronous file open. See the POSIX [`open(2)`](http://man7.org/linux/man-pages/man2/open.2.html) documentation for more details.
		
		`mode` sets the file mode (permission and sticky bits), but only if the file was
		created. On Windows, only the write permission can be manipulated; see
		{@link
		chmod
		}
		.
		
		The callback gets two arguments `(err, fd)`.
		
		Some characters (`< > : " / \ | ? *`) are reserved under Windows as documented
		by [Naming Files, Paths, and Namespaces](https://docs.microsoft.com/en-us/windows/desktop/FileIO/naming-a-file). Under NTFS, if the filename contains
		a colon, Node.js will open a file system stream, as described by [this MSDN page](https://docs.microsoft.com/en-us/windows/desktop/FileIO/using-streams).
		
		Functions based on `fs.open()` exhibit this behavior as well:`fs.writeFile()`, `fs.readFile()`, etc.
		
		Asynchronous open(2) - open and possibly create a file. If the file is created, its mode will be `0o666`.
	**/
	@:overload(function(path:node.fs.PathLike, flags:Null<node.fs.OpenMode>, callback:(err:Null<global.nodejs.ErrnoException>, fd:Float) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, fd:Float) -> Void):Void { })
	static function open(path:node.fs.PathLike, flags:Null<node.fs.OpenMode>, mode:Null<node.fs.Mode>, callback:(err:Null<global.nodejs.ErrnoException>, fd:Float) -> Void):Void;
	/**
		Returns an integer representing the file descriptor.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		open
		}
		.
	**/
	static function openSync(path:node.fs.PathLike, flags:node.fs.OpenMode, ?mode:node.fs.Mode):Float;
	/**
		Change the file system timestamps of the object referenced by `path`.
		
		The `atime` and `mtime` arguments follow these rules:
		
		* Values can be either numbers representing Unix epoch time in seconds, `Date`s, or a numeric string like `'123456789.0'`.
		* If the value can not be converted to a number, or is `NaN`, `Infinity`, or `-Infinity`, an `Error` will be thrown.
	**/
	static function utimes(path:node.fs.PathLike, atime:node.fs.TimeLike, mtime:node.fs.TimeLike, callback:node.fs.NoParamCallback):Void;
	/**
		Returns `undefined`.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		utimes
		}
		.
	**/
	static function utimesSync(path:node.fs.PathLike, atime:node.fs.TimeLike, mtime:node.fs.TimeLike):Void;
	/**
		Change the file system timestamps of the object referenced by the supplied file
		descriptor. See
		{@link
		utimes
		}
		.
	**/
	static function futimes(fd:Float, atime:node.fs.TimeLike, mtime:node.fs.TimeLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous version of
		{@link
		futimes
		}
		. Returns `undefined`.
	**/
	static function futimesSync(fd:Float, atime:node.fs.TimeLike, mtime:node.fs.TimeLike):Void;
	/**
		Request that all data for the open file descriptor is flushed to the storage
		device. The specific implementation is operating system and device specific.
		Refer to the POSIX [`fsync(2)`](http://man7.org/linux/man-pages/man2/fsync.2.html) documentation for more detail. No arguments other
		than a possible exception are given to the completion callback.
	**/
	static function fsync(fd:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Request that all data for the open file descriptor is flushed to the storage
		device. The specific implementation is operating system and device specific.
		Refer to the POSIX [`fsync(2)`](http://man7.org/linux/man-pages/man2/fsync.2.html) documentation for more detail. Returns `undefined`.
	**/
	static function fsyncSync(fd:Float):Void;
	/**
		Write `buffer` to the file specified by `fd`.
		
		`offset` determines the part of the buffer to be written, and `length` is
		an integer specifying the number of bytes to write.
		
		`position` refers to the offset from the beginning of the file where this data
		should be written. If `typeof position !== 'number'`, the data will be written
		at the current position. See [`pwrite(2)`](http://man7.org/linux/man-pages/man2/pwrite.2.html).
		
		The callback will be given three arguments `(err, bytesWritten, buffer)` where `bytesWritten` specifies how many _bytes_ were written from `buffer`.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a promise for an `Object` with `bytesWritten` and `buffer` properties.
		
		It is unsafe to use `fs.write()` multiple times on the same file without waiting
		for the callback. For this scenario,
		{@link
		createWriteStream
		}
		is
		recommended.
		
		On Linux, positional writes don't work when the file is opened in append mode.
		The kernel ignores the position argument and always appends the data to
		the end of the file.
		
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		Asynchronously writes `string` to the file referenced by the supplied file descriptor.
	**/
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, options:node.fs.WriteOptions, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function(fd:Float, string:String, position:Null<Float>, encoding:Null<global.nodejs.BufferEncoding>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:String, position:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:String, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	static function write<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, position:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void;
	/**
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		write
		}
		.
		
		Synchronously writes `string` to the file referenced by the supplied file descriptor, returning the number of bytes written.
	**/
	@:overload(function(fd:Float, string:String, ?position:Float, ?encoding:global.nodejs.BufferEncoding):Float { })
	static function writeSync(fd:Float, buffer:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, ?offset:Float, ?length:Float, ?position:Float):Float;
	/**
		Read data from the file specified by `fd`.
		
		The callback is given the three arguments, `(err, bytesRead, buffer)`.
		
		If the file is not modified concurrently, the end-of-file is reached when the
		number of bytes read is zero.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a promise for an `Object` with `bytesRead` and `buffer` properties.
		
		Similar to the above `fs.read` function, this version takes an optional `options` object.
		If not otherwise specified in an `options` object,
		`buffer` defaults to `Buffer.alloc(16384)`,
		`offset` defaults to `0`,
		`length` defaults to `buffer.byteLength`, `- offset` as of Node 17.6.0
		`position` defaults to `null`
	**/
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, options:node.fs.ReadOptionsWithBuffer<TBuffer>, callback:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, options:node.fs.ReadOptions, callback:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, callback:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function(fd:Float, callback:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffer:node.buffer.NonSharedBuffer) -> Void):Void { })
	static function read<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, offset:Float, length:Float, position:Null<node.fs.ReadPosition>, callback:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffer:TBuffer) -> Void):Void;
	/**
		Returns the number of `bytesRead`.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		read
		}
		.
		
		Similar to the above `fs.readSync` function, this version takes an optional `options` object.
		If no `options` object is specified, it will default with the above values.
	**/
	@:overload(function(fd:Float, buffer:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, ?opts:node.fs.ReadOptions):Float { })
	static function readSync(fd:Float, buffer:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, offset:Float, length:Float, position:Null<node.fs.ReadPosition>):Float;
	/**
		Asynchronously reads the entire contents of a file.
		
		```js
		import { readFile } from 'node:fs';
		
		readFile('/etc/passwd', (err, data) => {
		  if (err) throw err;
		  console.log(data);
		});
		```
		
		The callback is passed two arguments `(err, data)`, where `data` is the
		contents of the file.
		
		If no encoding is specified, then the raw buffer is returned.
		
		If `options` is a string, then it specifies the encoding:
		
		```js
		import { readFile } from 'node:fs';
		
		readFile('/etc/passwd', 'utf8', callback);
		```
		
		When the path is a directory, the behavior of `fs.readFile()` and
		{@link
		readFileSync
		}
		is platform-specific. On macOS, Linux, and Windows, an
		error will be returned. On FreeBSD, a representation of the directory's contents
		will be returned.
		
		```js
		import { readFile } from 'node:fs';
		
		// macOS, Linux, and Windows
		readFile('<directory>', (err, data) => {
		  // => [Error: EISDIR: illegal operation on a directory, read <directory>]
		});
		
		//  FreeBSD
		readFile('<directory>', (err, data) => {
		  // => null, <data>
		});
		```
		
		It is possible to abort an ongoing request using an `AbortSignal`. If a
		request is aborted the callback is called with an `AbortError`:
		
		```js
		import { readFile } from 'node:fs';
		
		const controller = new AbortController();
		const signal = controller.signal;
		readFile(fileInfo[0].name, { signal }, (err, buf) => {
		  // ...
		});
		// When you want to abort the request
		controller.abort();
		```
		
		The `fs.readFile()` function buffers the entire file. To minimize memory costs,
		when possible prefer streaming via `fs.createReadStream()`.
		
		Aborting an ongoing request does not abort individual operating
		system requests but rather the internal buffering `fs.readFile` performs.
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:node.fs.PathOrFileDescriptor, options:ts.AnyOf2<String, { var encoding : global.nodejs.BufferEncoding; @:optional var flag : String; } & node.events.eventemitter.Abortable>, callback:(err:Null<global.nodejs.ErrnoException>, data:String) -> Void):Void { })
	@:overload(function(path:node.fs.PathOrFileDescriptor, options:Null<ts.AnyOf2<String, node.fs.ObjectEncodingOptions & { @:optional var flag : String; } & node.events.eventemitter.Abortable>>, callback:(err:Null<global.nodejs.ErrnoException>, data:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathOrFileDescriptor, callback:(err:Null<global.nodejs.ErrnoException>, data:node.buffer.NonSharedBuffer) -> Void):Void { })
	static function readFile(path:node.fs.PathOrFileDescriptor, options:Null<{ @:optional var encoding : ts.Never; @:optional var flag : String; } & node.events.eventemitter.Abortable>, callback:(err:Null<global.nodejs.ErrnoException>, data:node.buffer.NonSharedBuffer) -> Void):Void;
	/**
		Returns the contents of the `path`.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		readFile
		}
		.
		
		If the `encoding` option is specified then this function returns a
		string. Otherwise it returns a buffer.
		
		Similar to
		{@link
		readFile
		}
		, when the path is a directory, the behavior of `fs.readFileSync()` is platform-specific.
		
		```js
		import { readFileSync } from 'node:fs';
		
		// macOS, Linux, and Windows
		readFileSync('<directory>');
		// => [Error: EISDIR: illegal operation on a directory, read <directory>]
		
		//  FreeBSD
		readFileSync('<directory>'); // => <data>
		```
		
		Synchronously reads the entire contents of a file.
	**/
	@:overload(function(path:node.fs.PathOrFileDescriptor, options:ts.AnyOf2<String, { var encoding : global.nodejs.BufferEncoding; @:optional var flag : String; }>):String { })
	@:overload(function(path:node.fs.PathOrFileDescriptor, ?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & { @:optional var flag : String; }>):ts.AnyOf2<String, node.buffer.NonSharedBuffer> { })
	static function readFileSync(path:node.fs.PathOrFileDescriptor, ?options:{ @:optional var encoding : ts.Never; @:optional var flag : String; }):node.buffer.NonSharedBuffer;
	/**
		When `file` is a filename, asynchronously writes data to the file, replacing the
		file if it already exists. `data` can be a string or a buffer.
		
		When `file` is a file descriptor, the behavior is similar to calling `fs.write()` directly (which is recommended). See the notes below on using
		a file descriptor.
		
		The `encoding` option is ignored if `data` is a buffer.
		
		The `mode` option only affects the newly created file. See
		{@link
		open
		}
		for more details.
		
		```js
		import { writeFile } from 'node:fs';
		import { Buffer } from 'node:buffer';
		
		const data = new Uint8Array(Buffer.from('Hello Node.js'));
		writeFile('message.txt', data, (err) => {
		  if (err) throw err;
		  console.log('The file has been saved!');
		});
		```
		
		If `options` is a string, then it specifies the encoding:
		
		```js
		import { writeFile } from 'node:fs';
		
		writeFile('message.txt', 'Hello Node.js', 'utf8', callback);
		```
		
		It is unsafe to use `fs.writeFile()` multiple times on the same file without
		waiting for the callback. For this scenario,
		{@link
		createWriteStream
		}
		is
		recommended.
		
		Similarly to `fs.readFile` \- `fs.writeFile` is a convenience method that
		performs multiple `write` calls internally to write the buffer passed to it.
		For performance sensitive code consider using
		{@link
		createWriteStream
		}
		.
		
		It is possible to use an `AbortSignal` to cancel an `fs.writeFile()`.
		Cancelation is "best effort", and some amount of data is likely still
		to be written.
		
		```js
		import { writeFile } from 'node:fs';
		import { Buffer } from 'node:buffer';
		
		const controller = new AbortController();
		const { signal } = controller;
		const data = new Uint8Array(Buffer.from('Hello Node.js'));
		writeFile('message.txt', data, { signal }, (err) => {
		  // When a request is aborted - the callback is called with an AbortError
		});
		// When the request should be aborted
		controller.abort();
		```
		
		Aborting an ongoing request does not abort individual operating
		system requests but rather the internal buffering `fs.writeFile` performs.
		
		Asynchronously writes data to a file, replacing the file if it already exists.
	**/
	@:overload(function(path:node.fs.PathOrFileDescriptor, data:ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, callback:node.fs.NoParamCallback):Void { })
	static function writeFile(file:node.fs.PathOrFileDescriptor, data:ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, options:node.fs.WriteFileOptions, callback:node.fs.NoParamCallback):Void;
	/**
		Returns `undefined`.
		
		The `mode` option only affects the newly created file. See
		{@link
		open
		}
		for more details.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		writeFile
		}
		.
	**/
	static function writeFileSync(file:node.fs.PathOrFileDescriptor, data:ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, ?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & node.events.eventemitter.Abortable & { @:optional var mode : node.fs.Mode; @:optional var flag : String; @:optional var flush : Bool; }>):Void;
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
	@:overload(function(file:node.fs.PathOrFileDescriptor, data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, callback:node.fs.NoParamCallback):Void { })
	static function appendFile(path:node.fs.PathOrFileDescriptor, data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, options:node.fs.WriteFileOptions, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously append data to a file, creating the file if it does not yet
		exist. `data` can be a string or a `Buffer`.
		
		The `mode` option only affects the newly created file. See
		{@link
		open
		}
		for more details.
		
		```js
		import { appendFileSync } from 'node:fs';
		
		try {
		  appendFileSync('message.txt', 'data to append');
		  console.log('The "data to append" was appended to file!');
		} catch (err) {
		  // Handle the error
		}
		```
		
		If `options` is a string, then it specifies the encoding:
		
		```js
		import { appendFileSync } from 'node:fs';
		
		appendFileSync('message.txt', 'data to append', 'utf8');
		```
		
		The `path` may be specified as a numeric file descriptor that has been opened
		for appending (using `fs.open()` or `fs.openSync()`). The file descriptor will
		not be closed automatically.
		
		```js
		import { openSync, closeSync, appendFileSync } from 'node:fs';
		
		let fd;
		
		try {
		  fd = openSync('message.txt', 'a');
		  appendFileSync(fd, 'data to append', 'utf8');
		} catch (err) {
		  // Handle the error
		} finally {
		  if (fd !== undefined)
		    closeSync(fd);
		}
		```
	**/
	static function appendFileSync(path:node.fs.PathOrFileDescriptor, data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & node.events.eventemitter.Abortable & { @:optional var mode : node.fs.Mode; @:optional var flag : String; @:optional var flush : Bool; }>):Void;
	/**
		Watch for changes on `filename`. The callback `listener` will be called each
		time the file is accessed.
		
		The `options` argument may be omitted. If provided, it should be an object. The `options` object may contain a boolean named `persistent` that indicates
		whether the process should continue to run as long as files are being watched.
		The `options` object may specify an `interval` property indicating how often the
		target should be polled in milliseconds.
		
		The `listener` gets two arguments the current stat object and the previous
		stat object:
		
		```js
		import { watchFile } from 'node:fs';
		
		watchFile('message.text', (curr, prev) => {
		  console.log(`the current mtime is: ${curr.mtime}`);
		  console.log(`the previous mtime was: ${prev.mtime}`);
		});
		```
		
		These stat objects are instances of `fs.Stat`. If the `bigint` option is `true`,
		the numeric values in these objects are specified as `BigInt`s.
		
		To be notified when the file was modified, not just accessed, it is necessary
		to compare `curr.mtimeMs` and `prev.mtimeMs`.
		
		When an `fs.watchFile` operation results in an `ENOENT` error, it
		will invoke the listener once, with all the fields zeroed (or, for dates, the
		Unix Epoch). If the file is created later on, the listener will be called
		again, with the latest stat objects. This is a change in functionality since
		v0.10.
		
		Using
		{@link
		watch
		}
		is more efficient than `fs.watchFile` and `fs.unwatchFile`. `fs.watch` should be used instead of `fs.watchFile` and `fs.unwatchFile` when possible.
		
		When a file being watched by `fs.watchFile()` disappears and reappears,
		then the contents of `previous` in the second callback event (the file's
		reappearance) will be the same as the contents of `previous` in the first
		callback event (its disappearance).
		
		This happens when:
		
		* the file is deleted, followed by a restore
		* the file is renamed and then renamed a second time back to its original name
		
		Watch for changes on `filename`. The callback `listener` will be called each time the file is accessed.
	**/
	@:overload(function(filename:node.fs.PathLike, options:Null<{ var bigint : Bool; @:optional var persistent : Bool; @:optional var interval : Float; }>, listener:node.fs.BigIntStatsListener):node.fs.StatWatcher { })
	@:overload(function(filename:node.fs.PathLike, listener:node.fs.StatsListener):node.fs.StatWatcher { })
	static function watchFile(filename:node.fs.PathLike, options:Null<{ @:optional var bigint : Bool; @:optional var persistent : Bool; @:optional var interval : Float; }>, listener:node.fs.StatsListener):node.fs.StatWatcher;
	/**
		Stop watching for changes on `filename`. If `listener` is specified, only that
		particular listener is removed. Otherwise, _all_ listeners are removed,
		effectively stopping watching of `filename`.
		
		Calling `fs.unwatchFile()` with a filename that is not being watched is a
		no-op, not an error.
		
		Using
		{@link
		watch
		}
		is more efficient than `fs.watchFile()` and `fs.unwatchFile()`. `fs.watch()` should be used instead of `fs.watchFile()` and `fs.unwatchFile()` when possible.
	**/
	@:overload(function(filename:node.fs.PathLike, ?listener:node.fs.BigIntStatsListener):Void { })
	static function unwatchFile(filename:node.fs.PathLike, ?listener:node.fs.StatsListener):Void;
	/**
		Watch for changes on `filename`, where `filename` is either a file or a
		directory.
		
		The second argument is optional. If `options` is provided as a string, it
		specifies the `encoding`. Otherwise `options` should be passed as an object.
		
		The listener callback gets two arguments `(eventType, filename)`. `eventType`is either `'rename'` or `'change'`, and `filename` is the name of the file
		which triggered the event.
		
		On most platforms, `'rename'` is emitted whenever a filename appears or
		disappears in the directory.
		
		The listener callback is attached to the `'change'` event fired by `fs.FSWatcher`, but it is not the same thing as the `'change'` value of `eventType`.
		
		If a `signal` is passed, aborting the corresponding AbortController will close
		the returned `fs.FSWatcher`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
	**/
	@:overload(function(filename:node.fs.PathLike, ?options:ts.AnyOf2<String, node.fs.WatchOptions>, ?listener:node.fs.WatchListener<String>):node.fs.FSWatcher { })
	@:overload(function(filename:node.fs.PathLike, options:ts.AnyOf2<String, node.fs.WatchOptions>, ?listener:node.fs.WatchListener<ts.AnyOf2<String, node.buffer.NonSharedBuffer>>):node.fs.FSWatcher { })
	@:overload(function(filename:node.fs.PathLike, ?listener:node.fs.WatchListener<String>):node.fs.FSWatcher { })
	static function watch(filename:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var persistent : Bool; @:optional var recursive : Bool; /** When provided the corresponding `AbortController` can be used to cancel an asynchronous action. **/ @:optional var signal : js.html.AbortSignal; }>, ?listener:node.fs.WatchListener<node.buffer.NonSharedBuffer>):node.fs.FSWatcher;
	/**
		Test whether or not the given path exists by checking with the file system.
		Then call the `callback` argument with either true or false:
		
		```js
		import { exists } from 'node:fs';
		
		exists('/etc/passwd', (e) => {
		  console.log(e ? 'it exists' : 'no passwd!');
		});
		```
		
		**The parameters for this callback are not consistent with other Node.js**
		**callbacks.** Normally, the first parameter to a Node.js callback is an `err` parameter, optionally followed by other parameters. The `fs.exists()` callback
		has only one boolean parameter. This is one reason `fs.access()` is recommended
		instead of `fs.exists()`.
		
		Using `fs.exists()` to check for the existence of a file before calling `fs.open()`, `fs.readFile()`, or `fs.writeFile()` is not recommended. Doing
		so introduces a race condition, since other processes may change the file's
		state between the two calls. Instead, user code should open/read/write the
		file directly and handle the error raised if the file does not exist.
		
		**write (NOT RECOMMENDED)**
		
		```js
		import { exists, open, close } from 'node:fs';
		
		exists('myfile', (e) => {
		  if (e) {
		    console.error('myfile already exists');
		  } else {
		    open('myfile', 'wx', (err, fd) => {
		      if (err) throw err;
		
		      try {
		        writeMyData(fd);
		      } finally {
		        close(fd, (err) => {
		          if (err) throw err;
		        });
		      }
		    });
		  }
		});
		```
		
		**write (RECOMMENDED)**
		
		```js
		import { open, close } from 'node:fs';
		open('myfile', 'wx', (err, fd) => {
		  if (err) {
		    if (err.code === 'EEXIST') {
		      console.error('myfile already exists');
		      return;
		    }
		
		    throw err;
		  }
		
		  try {
		    writeMyData(fd);
		  } finally {
		    close(fd, (err) => {
		      if (err) throw err;
		    });
		  }
		});
		```
		
		**read (NOT RECOMMENDED)**
		
		```js
		import { open, close, exists } from 'node:fs';
		
		exists('myfile', (e) => {
		  if (e) {
		    open('myfile', 'r', (err, fd) => {
		      if (err) throw err;
		
		      try {
		        readMyData(fd);
		      } finally {
		        close(fd, (err) => {
		          if (err) throw err;
		        });
		      }
		    });
		  } else {
		    console.error('myfile does not exist');
		  }
		});
		```
		
		**read (RECOMMENDED)**
		
		```js
		import { open, close } from 'node:fs';
		
		open('myfile', 'r', (err, fd) => {
		  if (err) {
		    if (err.code === 'ENOENT') {
		      console.error('myfile does not exist');
		      return;
		    }
		
		    throw err;
		  }
		
		  try {
		    readMyData(fd);
		  } finally {
		    close(fd, (err) => {
		      if (err) throw err;
		    });
		  }
		});
		```
		
		The "not recommended" examples above check for existence and then use the
		file; the "recommended" examples are better because they use the file directly
		and handle the error, if any.
		
		In general, check for the existence of a file only if the file won't be
		used directly, for example when its existence is a signal from another
		process.
	**/
	static function exists(path:node.fs.PathLike, callback:(exists:Bool) -> Void):Void;
	/**
		Returns `true` if the path exists, `false` otherwise.
		
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		exists
		}
		.
		
		`fs.exists()` is deprecated, but `fs.existsSync()` is not. The `callback` parameter to `fs.exists()` accepts parameters that are inconsistent with other
		Node.js callbacks. `fs.existsSync()` does not use a callback.
		
		```js
		import { existsSync } from 'node:fs';
		
		if (existsSync('/etc/passwd'))
		  console.log('The path exists.');
		```
	**/
	static function existsSync(path:node.fs.PathLike):Bool;
	/**
		Tests a user's permissions for the file or directory specified by `path`.
		The `mode` argument is an optional integer that specifies the accessibility
		checks to be performed. `mode` should be either the value `fs.constants.F_OK` or a mask consisting of the bitwise OR of any of `fs.constants.R_OK`, `fs.constants.W_OK`, and `fs.constants.X_OK`
		(e.g.`fs.constants.W_OK | fs.constants.R_OK`). Check `File access constants` for
		possible values of `mode`.
		
		The final argument, `callback`, is a callback function that is invoked with
		a possible error argument. If any of the accessibility checks fail, the error
		argument will be an `Error` object. The following examples check if `package.json` exists, and if it is readable or writable.
		
		```js
		import { access, constants } from 'node:fs';
		
		const file = 'package.json';
		
		// Check if the file exists in the current directory.
		access(file, constants.F_OK, (err) => {
		  console.log(`${file} ${err ? 'does not exist' : 'exists'}`);
		});
		
		// Check if the file is readable.
		access(file, constants.R_OK, (err) => {
		  console.log(`${file} ${err ? 'is not readable' : 'is readable'}`);
		});
		
		// Check if the file is writable.
		access(file, constants.W_OK, (err) => {
		  console.log(`${file} ${err ? 'is not writable' : 'is writable'}`);
		});
		
		// Check if the file is readable and writable.
		access(file, constants.R_OK | constants.W_OK, (err) => {
		  console.log(`${file} ${err ? 'is not' : 'is'} readable and writable`);
		});
		```
		
		Do not use `fs.access()` to check for the accessibility of a file before calling `fs.open()`, `fs.readFile()`, or `fs.writeFile()`. Doing
		so introduces a race condition, since other processes may change the file's
		state between the two calls. Instead, user code should open/read/write the
		file directly and handle the error raised if the file is not accessible.
		
		**write (NOT RECOMMENDED)**
		
		```js
		import { access, open, close } from 'node:fs';
		
		access('myfile', (err) => {
		  if (!err) {
		    console.error('myfile already exists');
		    return;
		  }
		
		  open('myfile', 'wx', (err, fd) => {
		    if (err) throw err;
		
		    try {
		      writeMyData(fd);
		    } finally {
		      close(fd, (err) => {
		        if (err) throw err;
		      });
		    }
		  });
		});
		```
		
		**write (RECOMMENDED)**
		
		```js
		import { open, close } from 'node:fs';
		
		open('myfile', 'wx', (err, fd) => {
		  if (err) {
		    if (err.code === 'EEXIST') {
		      console.error('myfile already exists');
		      return;
		    }
		
		    throw err;
		  }
		
		  try {
		    writeMyData(fd);
		  } finally {
		    close(fd, (err) => {
		      if (err) throw err;
		    });
		  }
		});
		```
		
		**read (NOT RECOMMENDED)**
		
		```js
		import { access, open, close } from 'node:fs';
		access('myfile', (err) => {
		  if (err) {
		    if (err.code === 'ENOENT') {
		      console.error('myfile does not exist');
		      return;
		    }
		
		    throw err;
		  }
		
		  open('myfile', 'r', (err, fd) => {
		    if (err) throw err;
		
		    try {
		      readMyData(fd);
		    } finally {
		      close(fd, (err) => {
		        if (err) throw err;
		      });
		    }
		  });
		});
		```
		
		**read (RECOMMENDED)**
		
		```js
		import { open, close } from 'node:fs';
		
		open('myfile', 'r', (err, fd) => {
		  if (err) {
		    if (err.code === 'ENOENT') {
		      console.error('myfile does not exist');
		      return;
		    }
		
		    throw err;
		  }
		
		  try {
		    readMyData(fd);
		  } finally {
		    close(fd, (err) => {
		      if (err) throw err;
		    });
		  }
		});
		```
		
		The "not recommended" examples above check for accessibility and then use the
		file; the "recommended" examples are better because they use the file directly
		and handle the error, if any.
		
		In general, check for the accessibility of a file only if the file will not be
		used directly, for example when its accessibility is a signal from another
		process.
		
		On Windows, access-control policies (ACLs) on a directory may limit access to
		a file or directory. The `fs.access()` function, however, does not check the
		ACL and therefore may report that a path is accessible even if the ACL restricts
		the user from reading or writing to it.
		
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	@:overload(function(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void { })
	static function access(path:node.fs.PathLike, mode:Null<Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously tests a user's permissions for the file or directory specified
		by `path`. The `mode` argument is an optional integer that specifies the
		accessibility checks to be performed. `mode` should be either the value `fs.constants.F_OK` or a mask consisting of the bitwise OR of any of `fs.constants.R_OK`, `fs.constants.W_OK`, and
		`fs.constants.X_OK` (e.g.`fs.constants.W_OK | fs.constants.R_OK`). Check `File access constants` for
		possible values of `mode`.
		
		If any of the accessibility checks fail, an `Error` will be thrown. Otherwise,
		the method will return `undefined`.
		
		```js
		import { accessSync, constants } from 'node:fs';
		
		try {
		  accessSync('etc/passwd', constants.R_OK | constants.W_OK);
		  console.log('can read/write');
		} catch (err) {
		  console.error('no access!');
		}
		```
	**/
	static function accessSync(path:node.fs.PathLike, ?mode:Float):Void;
	/**
		Unlike the 16 KiB default `highWaterMark` for a `stream.Readable`, the stream
		returned by this method has a default `highWaterMark` of 64 KiB.
		
		`options` can include `start` and `end` values to read a range of bytes from
		the file instead of the entire file. Both `start` and `end` are inclusive and
		start counting at 0, allowed values are in the
		\[0, [`Number.MAX_SAFE_INTEGER`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/MAX_SAFE_INTEGER)\] range. If `fd` is specified and `start` is
		omitted or `undefined`, `fs.createReadStream()` reads sequentially from the
		current file position. The `encoding` can be any one of those accepted by `Buffer`.
		
		If `fd` is specified, `ReadStream` will ignore the `path` argument and will use
		the specified file descriptor. This means that no `'open'` event will be
		emitted. `fd` should be blocking; non-blocking `fd`s should be passed to `net.Socket`.
		
		If `fd` points to a character device that only supports blocking reads
		(such as keyboard or sound card), read operations do not finish until data is
		available. This can prevent the process from exiting and the stream from
		closing naturally.
		
		By default, the stream will emit a `'close'` event after it has been
		destroyed.  Set the `emitClose` option to `false` to change this behavior.
		
		By providing the `fs` option, it is possible to override the corresponding `fs` implementations for `open`, `read`, and `close`. When providing the `fs` option,
		an override for `read` is required. If no `fd` is provided, an override for `open` is also required. If `autoClose` is `true`, an override for `close` is
		also required.
		
		```js
		import { createReadStream } from 'node:fs';
		
		// Create a stream from some character device.
		const stream = createReadStream('/dev/input/event0');
		setTimeout(() => {
		  stream.close(); // This may not close the stream.
		  // Artificially marking end-of-stream, as if the underlying resource had
		  // indicated end-of-file by itself, allows the stream to close.
		  // This does not cancel pending read operations, and if there is such an
		  // operation, the process may still not be able to exit successfully
		  // until it finishes.
		  stream.push(null);
		  stream.read(0);
		}, 100);
		```
		
		If `autoClose` is false, then the file descriptor won't be closed, even if
		there's an error. It is the application's responsibility to close it and make
		sure there's no file descriptor leak. If `autoClose` is set to true (default
		behavior), on `'error'` or `'end'` the file descriptor will be closed
		automatically.
		
		`mode` sets the file mode (permission and sticky bits), but only if the
		file was created.
		
		An example to read the last 10 bytes of a file which is 100 bytes long:
		
		```js
		import { createReadStream } from 'node:fs';
		
		createReadStream('sample.txt', { start: 90, end: 99 });
		```
		
		If `options` is a string, then it specifies the encoding.
	**/
	static function createReadStream(path:node.fs.PathLike, ?options:ts.AnyOf2<String, Fs>):node.fs.ReadStream;
	/**
		`options` may also include a `start` option to allow writing data at some
		position past the beginning of the file, allowed values are in the
		\[0, [`Number.MAX_SAFE_INTEGER`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/MAX_SAFE_INTEGER)\] range. Modifying a file rather than
		replacing it may require the `flags` option to be set to `r+` rather than the
		default `w`. The `encoding` can be any one of those accepted by `Buffer`.
		
		If `autoClose` is set to true (default behavior) on `'error'` or `'finish'` the file descriptor will be closed automatically. If `autoClose` is false,
		then the file descriptor won't be closed, even if there's an error.
		It is the application's responsibility to close it and make sure there's no
		file descriptor leak.
		
		By default, the stream will emit a `'close'` event after it has been
		destroyed.  Set the `emitClose` option to `false` to change this behavior.
		
		By providing the `fs` option it is possible to override the corresponding `fs` implementations for `open`, `write`, `writev`, and `close`. Overriding `write()` without `writev()` can reduce
		performance as some optimizations (`_writev()`)
		will be disabled. When providing the `fs` option, overrides for at least one of `write` and `writev` are required. If no `fd` option is supplied, an override
		for `open` is also required. If `autoClose` is `true`, an override for `close` is also required.
		
		Like `fs.ReadStream`, if `fd` is specified, `fs.WriteStream` will ignore the `path` argument and will use the specified file descriptor. This means that no `'open'` event will be
		emitted. `fd` should be blocking; non-blocking `fd`s
		should be passed to `net.Socket`.
		
		If `options` is a string, then it specifies the encoding.
	**/
	static function createWriteStream(path:node.fs.PathLike, ?options:ts.AnyOf2<String, Fs>):node.fs.WriteStream;
	/**
		Forces all currently queued I/O operations associated with the file to the
		operating system's synchronized I/O completion state. Refer to the POSIX [`fdatasync(2)`](http://man7.org/linux/man-pages/man2/fdatasync.2.html) documentation for details. No arguments other
		than a possible
		exception are given to the completion callback.
	**/
	static function fdatasync(fd:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Forces all currently queued I/O operations associated with the file to the
		operating system's synchronized I/O completion state. Refer to the POSIX [`fdatasync(2)`](http://man7.org/linux/man-pages/man2/fdatasync.2.html) documentation for details. Returns `undefined`.
	**/
	static function fdatasyncSync(fd:Float):Void;
	/**
		Asynchronously copies `src` to `dest`. By default, `dest` is overwritten if it
		already exists. No arguments other than a possible exception are given to the
		callback function. Node.js makes no guarantees about the atomicity of the copy
		operation. If an error occurs after the destination file has been opened for
		writing, Node.js will attempt to remove the destination.
		
		`mode` is an optional integer that specifies the behavior
		of the copy operation. It is possible to create a mask consisting of the bitwise
		OR of two or more values (e.g.`fs.constants.COPYFILE_EXCL | fs.constants.COPYFILE_FICLONE`).
		
		* `fs.constants.COPYFILE_EXCL`: The copy operation will fail if `dest` already
		exists.
		* `fs.constants.COPYFILE_FICLONE`: The copy operation will attempt to create a
		copy-on-write reflink. If the platform does not support copy-on-write, then a
		fallback copy mechanism is used.
		* `fs.constants.COPYFILE_FICLONE_FORCE`: The copy operation will attempt to
		create a copy-on-write reflink. If the platform does not support
		copy-on-write, then the operation will fail.
		
		```js
		import { copyFile, constants } from 'node:fs';
		
		function callback(err) {
		  if (err) throw err;
		  console.log('source.txt was copied to destination.txt');
		}
		
		// destination.txt will be created or overwritten by default.
		copyFile('source.txt', 'destination.txt', callback);
		
		// By using COPYFILE_EXCL, the operation will fail if destination.txt exists.
		copyFile('source.txt', 'destination.txt', constants.COPYFILE_EXCL, callback);
		```
	**/
	@:overload(function(src:node.fs.PathLike, dest:node.fs.PathLike, mode:Float, callback:node.fs.NoParamCallback):Void { })
	static function copyFile(src:node.fs.PathLike, dest:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously copies `src` to `dest`. By default, `dest` is overwritten if it
		already exists. Returns `undefined`. Node.js makes no guarantees about the
		atomicity of the copy operation. If an error occurs after the destination file
		has been opened for writing, Node.js will attempt to remove the destination.
		
		`mode` is an optional integer that specifies the behavior
		of the copy operation. It is possible to create a mask consisting of the bitwise
		OR of two or more values (e.g.`fs.constants.COPYFILE_EXCL | fs.constants.COPYFILE_FICLONE`).
		
		* `fs.constants.COPYFILE_EXCL`: The copy operation will fail if `dest` already
		exists.
		* `fs.constants.COPYFILE_FICLONE`: The copy operation will attempt to create a
		copy-on-write reflink. If the platform does not support copy-on-write, then a
		fallback copy mechanism is used.
		* `fs.constants.COPYFILE_FICLONE_FORCE`: The copy operation will attempt to
		create a copy-on-write reflink. If the platform does not support
		copy-on-write, then the operation will fail.
		
		```js
		import { copyFileSync, constants } from 'node:fs';
		
		// destination.txt will be created or overwritten by default.
		copyFileSync('source.txt', 'destination.txt');
		console.log('source.txt was copied to destination.txt');
		
		// By using COPYFILE_EXCL, the operation will fail if destination.txt exists.
		copyFileSync('source.txt', 'destination.txt', constants.COPYFILE_EXCL);
		```
	**/
	static function copyFileSync(src:node.fs.PathLike, dest:node.fs.PathLike, ?mode:Float):Void;
	/**
		Write an array of `ArrayBufferView`s to the file specified by `fd` using `writev()`.
		
		`position` is the offset from the beginning of the file where this data
		should be written. If `typeof position !== 'number'`, the data will be written
		at the current position.
		
		The callback will be given three arguments: `err`, `bytesWritten`, and `buffers`. `bytesWritten` is how many bytes were written from `buffers`.
		
		If this method is `util.promisify()` ed, it returns a promise for an `Object` with `bytesWritten` and `buffers` properties.
		
		It is unsafe to use `fs.writev()` multiple times on the same file without
		waiting for the callback. For this scenario, use
		{@link
		createWriteStream
		}
		.
		
		On Linux, positional writes don't work when the file is opened in append mode.
		The kernel ignores the position argument and always appends the data to
		the end of the file.
	**/
	@:overload(function<TBuffers:(haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>)>(fd:Float, buffers:TBuffers, position:Null<Float>, cb:(err:Null<global.nodejs.ErrnoException>, bytesWritten:Float, buffers:TBuffers) -> Void):Void { })
	static function writev<TBuffers:(haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>)>(fd:Float, buffers:TBuffers, cb:(err:Null<global.nodejs.ErrnoException>, bytesWritten:Float, buffers:TBuffers) -> Void):Void;
	/**
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		writev
		}
		.
	**/
	static function writevSync(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>, ?position:Float):Float;
	/**
		Read from a file specified by `fd` and write to an array of `ArrayBufferView`s
		using `readv()`.
		
		`position` is the offset from the beginning of the file from where data
		should be read. If `typeof position !== 'number'`, the data will be read
		from the current position.
		
		The callback will be given three arguments: `err`, `bytesRead`, and `buffers`. `bytesRead` is how many bytes were read from the file.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a promise for an `Object` with `bytesRead` and `buffers` properties.
	**/
	@:overload(function<TBuffers:(haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>)>(fd:Float, buffers:TBuffers, position:Null<Float>, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:TBuffers) -> Void):Void { })
	static function readv<TBuffers:(haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>)>(fd:Float, buffers:TBuffers, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:TBuffers) -> Void):Void;
	/**
		For detailed information, see the documentation of the asynchronous version of
		this API:
		{@link
		readv
		}
		.
	**/
	static function readvSync(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>, ?position:Float):Float;
	/**
		Returns a `Blob` whose data is backed by the given file.
		
		The file must not be modified after the `Blob` is created. Any modifications
		will cause reading the `Blob` data to fail with a `DOMException` error.
		Synchronous stat operations on the file when the `Blob` is created, and before
		each read in order to detect whether the file data has been modified on disk.
		
		```js
		import { openAsBlob } from 'node:fs';
		
		const blob = await openAsBlob('the.file.txt');
		const ab = await blob.arrayBuffer();
		blob.stream();
		```
	**/
	static function openAsBlob(path:node.fs.PathLike, ?options:node.fs.OpenAsBlobOptions):js.lib.Promise<js.html.Blob>;
	/**
		Synchronously open a directory. See [`opendir(3)`](http://man7.org/linux/man-pages/man3/opendir.3.html).
		
		Creates an `fs.Dir`, which contains all further functions for reading from
		and cleaning up the directory.
		
		The `encoding` option sets the encoding for the `path` while opening the
		directory and subsequent read operations.
	**/
	static function opendirSync(path:node.fs.PathLike, ?options:node.fs.OpenDirOptions):node.fs.Dir;
	/**
		Asynchronously open a directory. See the POSIX [`opendir(3)`](http://man7.org/linux/man-pages/man3/opendir.3.html) documentation for
		more details.
		
		Creates an `fs.Dir`, which contains all further functions for reading from
		and cleaning up the directory.
		
		The `encoding` option sets the encoding for the `path` while opening the
		directory and subsequent read operations.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.OpenDirOptions, cb:(err:Null<global.nodejs.ErrnoException>, dir:node.fs.Dir) -> Void):Void { })
	static function opendir(path:node.fs.PathLike, cb:(err:Null<global.nodejs.ErrnoException>, dir:node.fs.Dir) -> Void):Void;
	/**
		Asynchronously copies the entire directory structure from `src` to `dest`,
		including subdirectories and files.
		
		When copying a directory to another directory, globs are not supported and
		behavior is similar to `cp dir1/ dir2/`.
	**/
	@:overload(function(source:ts.AnyOf2<String, node.url.URL>, destination:ts.AnyOf2<String, node.url.URL>, opts:node.fs.CopyOptions, callback:(err:Null<global.nodejs.ErrnoException>) -> Void):Void { })
	static function cp(source:ts.AnyOf2<String, node.url.URL>, destination:ts.AnyOf2<String, node.url.URL>, callback:(err:Null<global.nodejs.ErrnoException>) -> Void):Void;
	/**
		Synchronously copies the entire directory structure from `src` to `dest`,
		including subdirectories and files.
		
		When copying a directory to another directory, globs are not supported and
		behavior is similar to `cp dir1/ dir2/`.
	**/
	static function cpSync(source:ts.AnyOf2<String, node.url.URL>, destination:ts.AnyOf2<String, node.url.URL>, ?opts:node.fs.CopySyncOptions):Void;
	/**
		Synchronous stat(2) - Get file status.
	**/
	static final statSync : node.fs.StatSyncFn;
	/**
		Synchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static final lstatSync : node.fs.StatSyncFn;
}