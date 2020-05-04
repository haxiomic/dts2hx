package node.fs;
@:jsRequire("fs", "promises") @valueModuleOnly extern class Promises {
	/**
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	static function access(path:PathLike, ?mode:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronously copies `src` to `dest`. By default, `dest` is overwritten if it already exists.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	static function copyFile(src:PathLike, dest:PathLike, ?flags:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous open(2) - open and possibly create a file.
	**/
	static function open(path:PathLike, flags:ts.AnyOf2<String, Float>, ?mode:ts.AnyOf2<String, Float>):ts.lib.IPromise<node.fs.promises.FileHandle>;
	/**
		Asynchronously reads data from the file referenced by the supplied `FileHandle`.
	**/
	static function read<TBuffer>(handle:node.fs.promises.FileHandle, buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):ts.lib.IPromise<{
		var bytesRead : Float;
		var buffer : TBuffer;
	}>;
	/**
		Asynchronously writes `buffer` to the file referenced by the supplied `FileHandle`.
		It is unsafe to call `fsPromises.write()` multiple times on the same file without waiting for the `Promise`
		to be resolved (or rejected). For this scenario, `fs.createWriteStream` is strongly recommended.
		
		Asynchronously writes `string` to the file referenced by the supplied `FileHandle`.
		It is unsafe to call `fsPromises.write()` multiple times on the same file without waiting for the `Promise`
		to be resolved (or rejected). For this scenario, `fs.createWriteStream` is strongly recommended.
	**/
	@:overload(function(handle:node.fs.promises.FileHandle, string:Dynamic, ?position:Float, ?encoding:String):ts.lib.IPromise<{
		var bytesWritten : Float;
		var buffer : String;
	}> { })
	static function write<TBuffer>(handle:node.fs.promises.FileHandle, buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):ts.lib.IPromise<{
		var bytesWritten : Float;
		var buffer : TBuffer;
	}>;
	/**
		Asynchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function rename(oldPath:PathLike, newPath:PathLike):ts.lib.IPromise<Void>;
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	static function truncate(path:PathLike, ?len:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	static function ftruncate(handle:node.fs.promises.FileHandle, ?len:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	static function rmdir(path:PathLike):ts.lib.IPromise<Void>;
	/**
		Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	static function fdatasync(handle:node.fs.promises.FileHandle):ts.lib.IPromise<Void>;
	/**
		Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	static function fsync(handle:node.fs.promises.FileHandle):ts.lib.IPromise<Void>;
	/**
		Asynchronous mkdir(2) - create a directory.
	**/
	static function mkdir(path:PathLike, ?options:ts.AnyOf3<String, Float, MakeDirectoryOptions>):ts.lib.IPromise<Void>;
	/**
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; }>):ts.lib.IPromise<Array<global.IBuffer>> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.lib.IPromise<ts.AnyOf2<Array<String>, Array<global.IBuffer>>> { })
	static function readdir(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.lib.IPromise<Array<String>>;
	/**
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; }>):ts.lib.IPromise<global.IBuffer> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.lib.IPromise<ts.AnyOf2<String, global.IBuffer>> { })
	static function readlink(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.lib.IPromise<String>;
	/**
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	static function symlink(target:PathLike, path:PathLike, ?type:String):ts.lib.IPromise<Void>;
	/**
		Asynchronous fstat(2) - Get file status.
	**/
	static function fstat(handle:node.fs.promises.FileHandle):ts.lib.IPromise<Stats>;
	/**
		Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function lstat(path:PathLike):ts.lib.IPromise<Stats>;
	/**
		Asynchronous stat(2) - Get file status.
	**/
	static function stat(path:PathLike):ts.lib.IPromise<Stats>;
	/**
		Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function link(existingPath:PathLike, newPath:PathLike):ts.lib.IPromise<Void>;
	/**
		Asynchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlink(path:PathLike):ts.lib.IPromise<Void>;
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmod(handle:node.fs.promises.FileHandle, mode:ts.AnyOf2<String, Float>):ts.lib.IPromise<Void>;
	/**
		Asynchronous chmod(2) - Change permissions of a file.
	**/
	static function chmod(path:PathLike, mode:ts.AnyOf2<String, Float>):ts.lib.IPromise<Void>;
	/**
		Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmod(path:PathLike, mode:ts.AnyOf2<String, Float>):ts.lib.IPromise<Void>;
	/**
		Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function lchown(path:PathLike, uid:Float, gid:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous fchown(2) - Change ownership of a file.
	**/
	static function fchown(handle:node.fs.promises.FileHandle, uid:Float, gid:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous chown(2) - Change ownership of a file.
	**/
	static function chown(path:PathLike, uid:Float, gid:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimes(path:PathLike, atime:ts.AnyOf3<String, Float, ts.lib.IDate_>, mtime:ts.AnyOf3<String, Float, ts.lib.IDate_>):ts.lib.IPromise<Void>;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied `FileHandle`.
	**/
	static function futimes(handle:node.fs.promises.FileHandle, atime:ts.AnyOf3<String, Float, ts.lib.IDate_>, mtime:ts.AnyOf3<String, Float, ts.lib.IDate_>):ts.lib.IPromise<Void>;
	/**
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; }>):ts.lib.IPromise<global.IBuffer> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.lib.IPromise<ts.AnyOf2<String, global.IBuffer>> { })
	static function realpath(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.lib.IPromise<String>;
	/**
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:ts.AnyOf2<String, { var encoding : String; }>):ts.lib.IPromise<global.IBuffer> { })
	@:overload(function(prefix:String, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.lib.IPromise<ts.AnyOf2<String, global.IBuffer>> { })
	static function mkdtemp(prefix:String, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.lib.IPromise<String>;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
		It is unsafe to call `fsPromises.writeFile()` multiple times on the same file without waiting for the `Promise` to be resolved (or rejected).
	**/
	static function writeFile(path:ts.AnyOf4<String, global.IBuffer, node.url.URL, node.fs.promises.FileHandle>, data:Dynamic, ?options:ts.AnyOf2<String, { @:optional var encoding : String; @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : ts.AnyOf2<String, Float>; }>):ts.lib.IPromise<Void>;
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	static function appendFile(path:ts.AnyOf4<String, global.IBuffer, node.url.URL, node.fs.promises.FileHandle>, data:Dynamic, ?options:ts.AnyOf2<String, { @:optional var encoding : String; @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : ts.AnyOf2<String, Float>; }>):ts.lib.IPromise<Void>;
	/**
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, global.IBuffer, node.url.URL, node.fs.promises.FileHandle>, options:ts.AnyOf2<String, { var encoding : global.BufferEncoding; @:optional var flag : ts.AnyOf2<String, Float>; }>):ts.lib.IPromise<String> { })
	@:overload(function(path:ts.AnyOf4<String, global.IBuffer, node.url.URL, node.fs.promises.FileHandle>, ?options:ts.AnyOf2<String, { @:optional var encoding : String; @:optional var flag : ts.AnyOf2<String, Float>; }>):ts.lib.IPromise<ts.AnyOf2<String, global.IBuffer>> { })
	static function readFile(path:ts.AnyOf4<String, global.IBuffer, node.url.URL, node.fs.promises.FileHandle>, ?options:{ @:optional var encoding : Dynamic; @:optional var flag : ts.AnyOf2<String, Float>; }):ts.lib.IPromise<global.IBuffer>;
}