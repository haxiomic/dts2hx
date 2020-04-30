package node.fs;
@:jsRequire("fs", "promises") @valueModuleOnly extern class Promises {
	/**
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	static function access(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?mode:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronously copies `src` to `dest`. By default, `dest` is overwritten if it already exists.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	static function copyFile(src:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, dest:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?flags:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous open(2) - open and possibly create a file.
	**/
	static function open(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, flags:haxe.extern.EitherType<String, Float>, ?mode:haxe.extern.EitherType<String, Float>):ts.lib.IPromise<node.fs.promises.FileHandle>;
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
	@:overload(function(handle:node.fs.promises.FileHandle, string:Any, ?position:Float, ?encoding:String):ts.lib.IPromise<{
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
	static function rename(oldPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, newPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>):ts.lib.IPromise<Void>;
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	static function truncate(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?len:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	static function ftruncate(handle:node.fs.promises.FileHandle, ?len:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	static function rmdir(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>):ts.lib.IPromise<Void>;
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
	static function mkdir(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, MakeDirectoryOptions>>):ts.lib.IPromise<Void>;
	/**
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>):ts.lib.IPromise<std.Array<global.IBuffer>> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):ts.lib.IPromise<haxe.extern.EitherType<std.Array<String>, std.Array<global.IBuffer>>> { })
	static function readdir(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):ts.lib.IPromise<std.Array<String>>;
	/**
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>):ts.lib.IPromise<global.IBuffer> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):ts.lib.IPromise<haxe.extern.EitherType<String, global.IBuffer>> { })
	static function readlink(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):ts.lib.IPromise<String>;
	/**
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	static function symlink(target:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?type:String):ts.lib.IPromise<Void>;
	/**
		Asynchronous fstat(2) - Get file status.
	**/
	static function fstat(handle:node.fs.promises.FileHandle):ts.lib.IPromise<Stats>;
	/**
		Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function lstat(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>):ts.lib.IPromise<Stats>;
	/**
		Asynchronous stat(2) - Get file status.
	**/
	static function stat(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>):ts.lib.IPromise<Stats>;
	/**
		Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function link(existingPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, newPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>):ts.lib.IPromise<Void>;
	/**
		Asynchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlink(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>):ts.lib.IPromise<Void>;
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmod(handle:node.fs.promises.FileHandle, mode:haxe.extern.EitherType<String, Float>):ts.lib.IPromise<Void>;
	/**
		Asynchronous chmod(2) - Change permissions of a file.
	**/
	static function chmod(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, mode:haxe.extern.EitherType<String, Float>):ts.lib.IPromise<Void>;
	/**
		Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmod(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, mode:haxe.extern.EitherType<String, Float>):ts.lib.IPromise<Void>;
	/**
		Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function lchown(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, uid:Float, gid:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous fchown(2) - Change ownership of a file.
	**/
	static function fchown(handle:node.fs.promises.FileHandle, uid:Float, gid:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronous chown(2) - Change ownership of a file.
	**/
	static function chown(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, uid:Float, gid:Float):ts.lib.IPromise<Void>;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimes(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, ts.lib.IDate>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, ts.lib.IDate>>):ts.lib.IPromise<Void>;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied `FileHandle`.
	**/
	static function futimes(handle:node.fs.promises.FileHandle, atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, ts.lib.IDate>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, ts.lib.IDate>>):ts.lib.IPromise<Void>;
	/**
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>):ts.lib.IPromise<global.IBuffer> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):ts.lib.IPromise<haxe.extern.EitherType<String, global.IBuffer>> { })
	static function realpath(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):ts.lib.IPromise<String>;
	/**
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:haxe.extern.EitherType<String, { var encoding : String; }>):ts.lib.IPromise<global.IBuffer> { })
	@:overload(function(prefix:String, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):ts.lib.IPromise<haxe.extern.EitherType<String, global.IBuffer>> { })
	static function mkdtemp(prefix:String, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):ts.lib.IPromise<String>;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
		It is unsafe to call `fsPromises.writeFile()` multiple times on the same file without waiting for the `Promise` to be resolved (or rejected).
	**/
	static function writeFile(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<node.url.URL, node.fs.promises.FileHandle>>>, data:Any, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; @:optional var mode : haxe.extern.EitherType<String, Float>; @:optional var flag : haxe.extern.EitherType<String, Float>; }>):ts.lib.IPromise<Void>;
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	static function appendFile(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<node.url.URL, node.fs.promises.FileHandle>>>, data:Any, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; @:optional var mode : haxe.extern.EitherType<String, Float>; @:optional var flag : haxe.extern.EitherType<String, Float>; }>):ts.lib.IPromise<Void>;
	/**
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<node.url.URL, node.fs.promises.FileHandle>>>, options:haxe.extern.EitherType<String, { var encoding : String; @:optional var flag : haxe.extern.EitherType<String, Float>; }>):ts.lib.IPromise<String> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<node.url.URL, node.fs.promises.FileHandle>>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; @:optional var flag : haxe.extern.EitherType<String, Float>; }>):ts.lib.IPromise<haxe.extern.EitherType<String, global.IBuffer>> { })
	static function readFile(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<node.url.URL, node.fs.promises.FileHandle>>>, ?options:{ @:optional var encoding : Any; @:optional var flag : haxe.extern.EitherType<String, Float>; }):ts.lib.IPromise<global.IBuffer>;
}