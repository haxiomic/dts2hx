package node;
@:jsRequire("fs") extern class Fs {
	/**
		Asynchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function rename(oldPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, newPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function renameSync(oldPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, newPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):Void;
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
		
		
		
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function truncate(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, len:Null<Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous truncate(2) - Truncate a file to a specified length.
	**/
	static function truncateSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?len:Float):Void;
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
		
		
		
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(fd:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function ftruncate(fd:Float, len:Null<Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	static function ftruncateSync(fd:Float, ?len:Float):Void;
	/**
		Asynchronous chown(2) - Change ownership of a file.
	**/
	static function chown(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, uid:Float, gid:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous chown(2) - Change ownership of a file.
	**/
	static function chownSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, uid:Float, gid:Float):Void;
	/**
		Asynchronous fchown(2) - Change ownership of a file.
	**/
	static function fchown(fd:Float, uid:Float, gid:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous fchown(2) - Change ownership of a file.
	**/
	static function fchownSync(fd:Float, uid:Float, gid:Float):Void;
	/**
		Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function lchown(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, uid:Float, gid:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function lchownSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, uid:Float, gid:Float):Void;
	/**
		Asynchronous chmod(2) - Change permissions of a file.
	**/
	static function chmod(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, mode:haxe.extern.EitherType<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous chmod(2) - Change permissions of a file.
	**/
	static function chmodSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, mode:haxe.extern.EitherType<String, Float>):Void;
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmod(fd:Float, mode:haxe.extern.EitherType<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmodSync(fd:Float, mode:haxe.extern.EitherType<String, Float>):Void;
	/**
		Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmod(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, mode:haxe.extern.EitherType<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmodSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, mode:haxe.extern.EitherType<String, Float>):Void;
	/**
		Asynchronous stat(2) - Get file status.
	**/
	static function stat(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException, stats:node.fs.Stats) -> Void):Void;
	/**
		Synchronous stat(2) - Get file status.
	**/
	static function statSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):node.fs.Stats;
	/**
		Asynchronous fstat(2) - Get file status.
	**/
	static function fstat(fd:Float, callback:(err:global.nodejs.ErrnoException, stats:node.fs.Stats) -> Void):Void;
	/**
		Synchronous fstat(2) - Get file status.
	**/
	static function fstatSync(fd:Float):node.fs.Stats;
	/**
		Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function lstat(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException, stats:node.fs.Stats) -> Void):Void;
	/**
		Synchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function lstatSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):node.fs.Stats;
	/**
		Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function link(existingPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, newPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function linkSync(existingPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, newPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):Void;
	/**
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
		
		
		
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	@:overload(function(target:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function symlink(target:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, type:Null<String>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	static function symlinkSync(target:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?type:String):Void;
	/**
		Asynchronous readlink(2) - read value of a symbolic link.
		
		
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, linkString:global.Buffer) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, linkString:haxe.extern.EitherType<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException, linkString:String) -> Void):Void { })
	static function readlink(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, linkString:String) -> Void):Void;
	/**
		Synchronous readlink(2) - read value of a symbolic link.
		
		
		
		Synchronous readlink(2) - read value of a symbolic link.
		
		
		
		Synchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>):global.Buffer { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):haxe.extern.EitherType<String, global.Buffer> { })
	static function readlinkSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):String;
	/**
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, resolvedPath:global.Buffer) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, resolvedPath:haxe.extern.EitherType<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException, resolvedPath:String) -> Void):Void { })
	static function realpath(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, resolvedPath:String) -> Void):Void;
	/**
		Synchronous realpath(3) - return the canonicalized absolute pathname.
		
		
		
		Synchronous realpath(3) - return the canonicalized absolute pathname.
		
		
		
		Synchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>):global.Buffer { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):haxe.extern.EitherType<String, global.Buffer> { })
	static function realpathSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):String;
	/**
		Asynchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlink(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlinkSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):Void;
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	static function rmdir(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous rmdir(2) - delete a directory.
	**/
	static function rmdirSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):Void;
	/**
		Asynchronous mkdir(2) - create a directory.
		
		
		
		Asynchronous mkdir(2) - create a directory with a mode of `0o777`.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function mkdir(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, node.fs.MakeDirectoryOptions>>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous mkdir(2) - create a directory.
	**/
	static function mkdirSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, node.fs.MakeDirectoryOptions>>):Void;
	/**
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:haxe.extern.EitherType<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, folder:global.Buffer) -> Void):Void { })
	@:overload(function(prefix:String, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, folder:haxe.extern.EitherType<String, global.Buffer>) -> Void):Void { })
	@:overload(function(prefix:String, callback:(err:global.nodejs.ErrnoException, folder:String) -> Void):Void { })
	static function mkdtemp(prefix:String, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, folder:String) -> Void):Void;
	/**
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		
		
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		
		
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:haxe.extern.EitherType<String, { var encoding : String; }>):global.Buffer { })
	@:overload(function(prefix:String, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):haxe.extern.EitherType<String, global.Buffer> { })
	static function mkdtempSync(prefix:String, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):String;
	/**
		Asynchronous readdir(3) - read a directory.
		
		
		
		Asynchronous readdir(3) - read a directory.
		
		
		
		Asynchronous readdir(3) - read a directory.
		
		
		
		Asynchronous readdir(3) - read a directory.
		
		
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; @:optional
	var withFileTypes : Bool; }>, callback:(err:global.nodejs.ErrnoException, files:std.Array<global.Buffer>) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var withFileTypes : Bool; }>>, callback:(err:global.nodejs.ErrnoException, files:haxe.extern.EitherType<std.Array<String>, std.Array<global.Buffer>>) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException, files:std.Array<String>) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:{ var withFileTypes : Bool; }, callback:(err:global.nodejs.ErrnoException, files:std.Array<node.fs.Dirent>) -> Void):Void { })
	static function readdir(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { var encoding : Null<String>; @:optional
	var withFileTypes : Bool; }>>, callback:(err:global.nodejs.ErrnoException, files:std.Array<String>) -> Void):Void;
	/**
		Synchronous readdir(3) - read a directory.
		
		
		
		Synchronous readdir(3) - read a directory.
		
		
		
		Synchronous readdir(3) - read a directory.
		
		
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; @:optional
	var withFileTypes : Bool; }>):std.Array<global.Buffer> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var withFileTypes : Bool; }>):haxe.extern.EitherType<std.Array<String>, std.Array<global.Buffer>> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:{ var withFileTypes : Bool; }):std.Array<node.fs.Dirent> { })
	static function readdirSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { var encoding : Null<String>; @:optional
	var withFileTypes : Bool; }>):std.Array<String>;
	/**
		Asynchronous close(2) - close a file descriptor.
	**/
	static function close(fd:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous close(2) - close a file descriptor.
	**/
	static function closeSync(fd:Float):Void;
	/**
		Asynchronous open(2) - open and possibly create a file.
		
		
		
		Asynchronous open(2) - open and possibly create a file. If the file is created, its mode will be `0o666`.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, flags:haxe.extern.EitherType<String, Float>, callback:(err:global.nodejs.ErrnoException, fd:Float) -> Void):Void { })
	static function open(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, flags:haxe.extern.EitherType<String, Float>, mode:Null<haxe.extern.EitherType<String, Float>>, callback:(err:global.nodejs.ErrnoException, fd:Float) -> Void):Void;
	/**
		Synchronous open(2) - open and possibly create a file, returning a file descriptor..
	**/
	static function openSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, flags:haxe.extern.EitherType<String, Float>, ?mode:haxe.extern.EitherType<String, Float>):Float;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimes(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimesSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>):Void;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied file descriptor.
	**/
	static function futimes(fd:Float, atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously change file timestamps of the file referenced by the supplied file descriptor.
	**/
	static function futimesSync(fd:Float, atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>):Void;
	/**
		Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	static function fsync(fd:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	static function fsyncSync(fd:Float):Void;
	/**
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		
		
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		
		
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		
		
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		
		
		Asynchronously writes `string` to the file referenced by the supplied file descriptor.
		
		
		
		Asynchronously writes `string` to the file referenced by the supplied file descriptor.
		
		
		
		Asynchronously writes `string` to the file referenced by the supplied file descriptor.
	**/
	@:overload(function<TBuffer:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(fd:Float, buffer:TBuffer, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function(fd:Float, string:Any, position:Null<Float>, encoding:Null<String>, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:Any, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:Any, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	static function write<TBuffer:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void;
	/**
		Synchronously writes `buffer` to the file referenced by the supplied file descriptor, returning the number of bytes written.
		
		
		
		Synchronously writes `string` to the file referenced by the supplied file descriptor, returning the number of bytes written.
	**/
	@:overload(function(fd:Float, string:Any, ?position:Float, ?encoding:String):Float { })
	static function writeSync(fd:Float, buffer:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>, ?offset:Float, ?length:Float, ?position:Float):Float;
	/**
		Asynchronously reads data from the file referenced by the supplied file descriptor.
	**/
	static function read<TBuffer:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(fd:Float, buffer:TBuffer, offset:Float, length:Float, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, bytesRead:Float, buffer:TBuffer) -> Void):Void;
	/**
		Synchronously reads data from the file referenced by the supplied file descriptor, returning the number of bytes read.
	**/
	static function readSync(fd:Float, buffer:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>, offset:Float, length:Float, position:Null<Float>):Float;
	/**
		Asynchronously reads the entire contents of a file.
		
		
		
		Asynchronously reads the entire contents of a file.
		
		
		
		Asynchronously reads the entire contents of a file.
		
		
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, options:haxe.extern.EitherType<String, { var encoding : String; @:optional
	var flag : String; }>, callback:(err:global.nodejs.ErrnoException, data:String) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var flag : String; }>>, callback:(err:global.nodejs.ErrnoException, data:haxe.extern.EitherType<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, callback:(err:global.nodejs.ErrnoException, data:global.Buffer) -> Void):Void { })
	static function readFile(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, options:Null<{ @:optional
	var encoding : Any; @:optional
	var flag : String; }>, callback:(err:global.nodejs.ErrnoException, data:global.Buffer) -> Void):Void;
	/**
		Synchronously reads the entire contents of a file.
		
		
		
		Synchronously reads the entire contents of a file.
		
		
		
		Synchronously reads the entire contents of a file.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, options:haxe.extern.EitherType<String, { var encoding : String; @:optional
	var flag : String; }>):String { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var flag : String; }>):haxe.extern.EitherType<String, global.Buffer> { })
	static function readFileSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, ?options:{ @:optional
	var encoding : Any; @:optional
	var flag : String; }):global.Buffer;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
		
		
		
		Asynchronously writes data to a file, replacing the file if it already exists.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, data:Any, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function writeFile(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, data:Any, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var mode : haxe.extern.EitherType<String, Float>; @:optional
	var flag : String; }>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously writes data to a file, replacing the file if it already exists.
	**/
	static function writeFileSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, data:Any, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var mode : haxe.extern.EitherType<String, Float>; @:optional
	var flag : String; }>):Void;
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
		
		
		
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	@:overload(function(file:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, data:Any, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function appendFile(file:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, data:Any, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var mode : haxe.extern.EitherType<String, Float>; @:optional
	var flag : String; }>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously append data to a file, creating the file if it does not exist.
	**/
	static function appendFileSync(file:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, data:Any, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var mode : haxe.extern.EitherType<String, Float>; @:optional
	var flag : String; }>):Void;
	/**
		Watch for changes on `filename`. The callback `listener` will be called each time the file is accessed.
		
		
		
		Watch for changes on `filename`. The callback `listener` will be called each time the file is accessed.
	**/
	@:overload(function(filename:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void { })
	static function watchFile(filename:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<{ @:optional
	var persistent : Bool; @:optional
	var interval : Float; }>, listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void;
	/**
		Stop watching for changes on `filename`.
	**/
	static function unwatchFile(filename:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void;
	/**
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
	**/
	@:overload(function(filename:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; @:optional
	var persistent : Bool; @:optional
	var recursive : Bool; }>, ?listener:(event:String, filename:global.Buffer) -> Void):node.fs.FSWatcher { })
	@:overload(function(filename:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var persistent : Bool; @:optional
	var recursive : Bool; }>>, ?listener:(event:String, filename:haxe.extern.EitherType<String, global.Buffer>) -> Void):node.fs.FSWatcher { })
	@:overload(function(filename:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?listener:(event:String, filename:String) -> Any):node.fs.FSWatcher { })
	static function watch(filename:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional
	var encoding : String; @:optional
	var persistent : Bool; @:optional
	var recursive : Bool; }>>, ?listener:(event:String, filename:String) -> Void):node.fs.FSWatcher;
	/**
		Asynchronously tests whether or not the given path exists by checking with the file system.
	**/
	static function exists(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(exists:Bool) -> Void):Void;
	/**
		Synchronously tests whether or not the given path exists by checking with the file system.
	**/
	static function existsSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):Bool;
	/**
		Asynchronously tests a user's permissions for the file specified by path.
		
		
		
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function access(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, mode:Null<Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously tests a user's permissions for the file specified by path.
	**/
	static function accessSync(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?mode:Float):Void;
	/**
		Returns a new `ReadStream` object.
	**/
	static function createReadStream(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var fd : Float; @:optional
	var mode : Float; @:optional
	var autoClose : Bool; @:optional
	var start : Float; @:optional
	var end : Float; @:optional
	var highWaterMark : Float; }>):node.fs.ReadStream;
	/**
		Returns a new `WriteStream` object.
	**/
	static function createWriteStream(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var fd : Float; @:optional
	var mode : Float; @:optional
	var autoClose : Bool; @:optional
	var start : Float; }>):node.fs.WriteStream;
	/**
		Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	static function fdatasync(fd:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	static function fdatasyncSync(fd:Float):Void;
	/**
		Asynchronously copies src to dest. By default, dest is overwritten if it already exists.
		No arguments other than a possible exception are given to the callback function.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
		
		
		
		Asynchronously copies src to dest. By default, dest is overwritten if it already exists.
		No arguments other than a possible exception are given to the callback function.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	@:overload(function(src:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, dest:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, flags:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function copyFile(src:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, dest:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously copies src to dest. By default, dest is overwritten if it already exists.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	static function copyFileSync(src:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, dest:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?flags:Float):Void;
}