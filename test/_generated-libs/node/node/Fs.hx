package node;

@:jsRequire("fs") @valueModuleOnly extern class Fs {
	/**
		Asynchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function rename(oldPath:node.fs.PathLike, newPath:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function renameSync(oldPath:node.fs.PathLike, newPath:node.fs.PathLike):Void;
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
		
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function truncate(path:node.fs.PathLike, len:Null<Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous truncate(2) - Truncate a file to a specified length.
	**/
	static function truncateSync(path:node.fs.PathLike, ?len:Float):Void;
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
	static function chown(path:node.fs.PathLike, uid:Float, gid:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous chown(2) - Change ownership of a file.
	**/
	static function chownSync(path:node.fs.PathLike, uid:Float, gid:Float):Void;
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
	static function lchown(path:node.fs.PathLike, uid:Float, gid:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function lchownSync(path:node.fs.PathLike, uid:Float, gid:Float):Void;
	/**
		Asynchronous chmod(2) - Change permissions of a file.
	**/
	static function chmod(path:node.fs.PathLike, mode:ts.AnyOf2<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous chmod(2) - Change permissions of a file.
	**/
	static function chmodSync(path:node.fs.PathLike, mode:ts.AnyOf2<String, Float>):Void;
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmod(fd:Float, mode:ts.AnyOf2<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmodSync(fd:Float, mode:ts.AnyOf2<String, Float>):Void;
	/**
		Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmod(path:node.fs.PathLike, mode:ts.AnyOf2<String, Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmodSync(path:node.fs.PathLike, mode:ts.AnyOf2<String, Float>):Void;
	/**
		Asynchronous stat(2) - Get file status.
	**/
	static function stat(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException, stats:node.fs.Stats) -> Void):Void;
	/**
		Synchronous stat(2) - Get file status.
	**/
	static function statSync(path:node.fs.PathLike):node.fs.Stats;
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
	static function lstat(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException, stats:node.fs.Stats) -> Void):Void;
	/**
		Synchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function lstatSync(path:node.fs.PathLike):node.fs.Stats;
	/**
		Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function link(existingPath:node.fs.PathLike, newPath:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function linkSync(existingPath:node.fs.PathLike, newPath:node.fs.PathLike):Void;
	/**
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
		
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	@:overload(function(target:node.fs.PathLike, path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function symlink(target:node.fs.PathLike, path:node.fs.PathLike, type:Null<String>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	static function symlinkSync(target:node.fs.PathLike, path:node.fs.PathLike, ?type:String):Void;
	/**
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, linkString:global.Buffer) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, linkString:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException, linkString:String) -> Void):Void { })
	static function readlink(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, linkString:String) -> Void):Void;
	/**
		Synchronous readlink(2) - read value of a symbolic link.
		
		Synchronous readlink(2) - read value of a symbolic link.
		
		Synchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; }>):global.Buffer { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.AnyOf2<String, global.Buffer> { })
	static function readlinkSync(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):String;
	/**
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, resolvedPath:global.Buffer) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, resolvedPath:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException, resolvedPath:String) -> Void):Void { })
	static function realpath(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, resolvedPath:String) -> Void):Void;
	/**
		Synchronous realpath(3) - return the canonicalized absolute pathname.
		
		Synchronous realpath(3) - return the canonicalized absolute pathname.
		
		Synchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; }>):global.Buffer { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.AnyOf2<String, global.Buffer> { })
	static function realpathSync(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):String;
	/**
		Asynchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlink(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlinkSync(path:node.fs.PathLike):Void;
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	static function rmdir(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous rmdir(2) - delete a directory.
	**/
	static function rmdirSync(path:node.fs.PathLike):Void;
	/**
		Asynchronous mkdir(2) - create a directory.
		
		Asynchronous mkdir(2) - create a directory with a mode of `0o777`.
	**/
	@:overload(function(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function mkdir(path:node.fs.PathLike, options:Null<ts.AnyOf3<String, Float, node.fs.MakeDirectoryOptions>>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronous mkdir(2) - create a directory.
	**/
	static function mkdirSync(path:node.fs.PathLike, ?options:ts.AnyOf3<String, Float, node.fs.MakeDirectoryOptions>):Void;
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
	@:overload(function(prefix:String, options:ts.AnyOf2<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, folder:global.Buffer) -> Void):Void { })
	@:overload(function(prefix:String, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, folder:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(prefix:String, callback:(err:global.nodejs.ErrnoException, folder:String) -> Void):Void { })
	static function mkdtemp(prefix:String, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, folder:String) -> Void):Void;
	/**
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:ts.AnyOf2<String, { var encoding : String; }>):global.Buffer { })
	@:overload(function(prefix:String, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.AnyOf2<String, global.Buffer> { })
	static function mkdtempSync(prefix:String, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):String;
	/**
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; }>, callback:(err:global.nodejs.ErrnoException, files:Array<global.Buffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; @:optional var withFileTypes : Bool; }>>, callback:(err:global.nodejs.ErrnoException, files:ts.AnyOf2<Array<String>, Array<global.Buffer>>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException, files:Array<String>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:{ var withFileTypes : Bool; }, callback:(err:global.nodejs.ErrnoException, files:Array<node.fs.Dirent>) -> Void):Void { })
	static function readdir(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, { var encoding : Null<String>; @:optional var withFileTypes : Bool; }>>, callback:(err:global.nodejs.ErrnoException, files:Array<String>) -> Void):Void;
	/**
		Synchronous readdir(3) - read a directory.
		
		Synchronous readdir(3) - read a directory.
		
		Synchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; }>):Array<global.Buffer> { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; @:optional var withFileTypes : Bool; }>):ts.AnyOf2<Array<String>, Array<global.Buffer>> { })
	@:overload(function(path:node.fs.PathLike, options:{ var withFileTypes : Bool; }):Array<node.fs.Dirent> { })
	static function readdirSync(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { var encoding : Null<String>; @:optional var withFileTypes : Bool; }>):Array<String>;
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
	@:overload(function(path:node.fs.PathLike, flags:ts.AnyOf2<String, Float>, callback:(err:global.nodejs.ErrnoException, fd:Float) -> Void):Void { })
	static function open(path:node.fs.PathLike, flags:ts.AnyOf2<String, Float>, mode:Null<ts.AnyOf2<String, Float>>, callback:(err:global.nodejs.ErrnoException, fd:Float) -> Void):Void;
	/**
		Synchronous open(2) - open and possibly create a file, returning a file descriptor..
	**/
	static function openSync(path:node.fs.PathLike, flags:ts.AnyOf2<String, Float>, ?mode:ts.AnyOf2<String, Float>):Float;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimes(path:node.fs.PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimesSync(path:node.fs.PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>):Void;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied file descriptor.
	**/
	static function futimes(fd:Float, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously change file timestamps of the file referenced by the supplied file descriptor.
	**/
	static function futimesSync(fd:Float, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>):Void;
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
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function(fd:Float, string:Dynamic, position:Null<Float>, encoding:Null<String>, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:Dynamic, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:Dynamic, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	static function write<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void;
	/**
		Synchronously writes `buffer` to the file referenced by the supplied file descriptor, returning the number of bytes written.
		
		Synchronously writes `string` to the file referenced by the supplied file descriptor, returning the number of bytes written.
	**/
	@:overload(function(fd:Float, string:Dynamic, ?position:Float, ?encoding:String):Float { })
	static function writeSync(fd:Float, buffer:node.crypto.Binary, ?offset:Float, ?length:Float, ?position:Float):Float;
	/**
		Asynchronously reads data from the file referenced by the supplied file descriptor.
	**/
	static function read<TBuffer>(fd:Float, buffer:TBuffer, offset:Float, length:Float, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, bytesRead:Float, buffer:TBuffer) -> Void):Void;
	/**
		Synchronously reads data from the file referenced by the supplied file descriptor, returning the number of bytes read.
	**/
	static function readSync(fd:Float, buffer:node.crypto.Binary, offset:Float, length:Float, position:Null<Float>):Float;
	/**
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:ts.AnyOf2<String, { var encoding : String; @:optional var flag : String; }>, callback:(err:global.nodejs.ErrnoException, data:String) -> Void):Void { })
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; @:optional var flag : String; }>>, callback:(err:global.nodejs.ErrnoException, data:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, callback:(err:global.nodejs.ErrnoException, data:global.Buffer) -> Void):Void { })
	static function readFile(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:Null<{ @:optional var encoding : Dynamic; @:optional var flag : String; }>, callback:(err:global.nodejs.ErrnoException, data:global.Buffer) -> Void):Void;
	/**
		Synchronously reads the entire contents of a file.
		
		Synchronously reads the entire contents of a file.
		
		Synchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:ts.AnyOf2<String, { var encoding : String; @:optional var flag : String; }>):String { })
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, ?options:ts.AnyOf2<String, { @:optional var encoding : String; @:optional var flag : String; }>):ts.AnyOf2<String, global.Buffer> { })
	static function readFileSync(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, ?options:{ @:optional var encoding : Dynamic; @:optional var flag : String; }):global.Buffer;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
		
		Asynchronously writes data to a file, replacing the file if it already exists.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function writeFile(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, options:node.fs.WriteFileOptions, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously writes data to a file, replacing the file if it already exists.
	**/
	static function writeFileSync(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, ?options:ts.AnyOf2<String, { @:optional var encoding : String; @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : String; }>):Void;
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
		
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	@:overload(function(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function appendFile(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, options:node.fs.WriteFileOptions, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously append data to a file, creating the file if it does not exist.
	**/
	static function appendFileSync(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, ?options:ts.AnyOf2<String, { @:optional var encoding : String; @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : String; }>):Void;
	/**
		Watch for changes on `filename`. The callback `listener` will be called each time the file is accessed.
		
		Watch for changes on `filename`. The callback `listener` will be called each time the file is accessed.
	**/
	@:overload(function(filename:node.fs.PathLike, listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void { })
	static function watchFile(filename:node.fs.PathLike, options:Null<{ @:optional var persistent : Bool; @:optional var interval : Float; }>, listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void;
	/**
		Stop watching for changes on `filename`.
	**/
	static function unwatchFile(filename:node.fs.PathLike, ?listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void;
	/**
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
	**/
	@:overload(function(filename:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var persistent : Bool; @:optional var recursive : Bool; }>, ?listener:(event:String, filename:global.Buffer) -> Void):node.fs.FSWatcher { })
	@:overload(function(filename:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; @:optional var persistent : Bool; @:optional var recursive : Bool; }>>, ?listener:(event:String, filename:ts.AnyOf2<String, global.Buffer>) -> Void):node.fs.FSWatcher { })
	@:overload(function(filename:node.fs.PathLike, ?listener:(event:String, filename:String) -> Dynamic):node.fs.FSWatcher { })
	static function watch(filename:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; @:optional var persistent : Bool; @:optional var recursive : Bool; }>>, ?listener:(event:String, filename:String) -> Void):node.fs.FSWatcher;
	/**
		Asynchronously tests whether or not the given path exists by checking with the file system.
	**/
	static function exists(path:node.fs.PathLike, callback:(exists:Bool) -> Void):Void;
	/**
		Synchronously tests whether or not the given path exists by checking with the file system.
	**/
	static function existsSync(path:node.fs.PathLike):Bool;
	/**
		Asynchronously tests a user's permissions for the file specified by path.
		
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	@:overload(function(path:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function access(path:node.fs.PathLike, mode:Null<Float>, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously tests a user's permissions for the file specified by path.
	**/
	static function accessSync(path:node.fs.PathLike, ?mode:Float):Void;
	/**
		Returns a new `ReadStream` object.
	**/
	static function createReadStream(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var flags : String; @:optional var encoding : String; @:optional var fd : Float; @:optional var mode : Float; @:optional var autoClose : Bool; @:optional var start : Float; @:optional var end : Float; @:optional var highWaterMark : Float; }>):node.fs.ReadStream;
	/**
		Returns a new `WriteStream` object.
	**/
	static function createWriteStream(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var flags : String; @:optional var encoding : String; @:optional var fd : Float; @:optional var mode : Float; @:optional var autoClose : Bool; @:optional var start : Float; }>):node.fs.WriteStream;
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
	@:overload(function(src:node.fs.PathLike, dest:node.fs.PathLike, flags:Float, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	static function copyFile(src:node.fs.PathLike, dest:node.fs.PathLike, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
	/**
		Synchronously copies src to dest. By default, dest is overwritten if it already exists.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	static function copyFileSync(src:node.fs.PathLike, dest:node.fs.PathLike, ?flags:Float):Void;
}