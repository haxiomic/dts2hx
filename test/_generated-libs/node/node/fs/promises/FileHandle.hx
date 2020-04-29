package node.fs.promises;
extern typedef FileHandle = {
	/**
		Gets the file descriptor for this file handle.
	**/
	final fd : Float;
	/**
		Asynchronously append data to a file, creating the file if it does not exist. The underlying file will _not_ be closed automatically.
		The `FileHandle` must have been opened for appending.
	**/
	function appendFile(data:Any, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; @:optional var mode : haxe.extern.EitherType<String, Float>; @:optional var flag : haxe.extern.EitherType<String, Float>; }>):js.lib.IPromise<Void>;
	/**
		Asynchronous fchown(2) - Change ownership of a file.
	**/
	function chown(uid:Float, gid:Float):js.lib.IPromise<Void>;
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	function chmod(mode:haxe.extern.EitherType<String, Float>):js.lib.IPromise<Void>;
	/**
		Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	function datasync():js.lib.IPromise<Void>;
	/**
		Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	function sync():js.lib.IPromise<Void>;
	/**
		Asynchronously reads data from the file.
		The `FileHandle` must have been opened for reading.
	**/
	function read<TBuffer:(haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>)>(buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):js.lib.IPromise<{
		var bytesRead : Float;
		var buffer : TBuffer;
	}>;
	/**
		Asynchronously reads the entire contents of a file. The underlying file will _not_ be closed automatically.
		The `FileHandle` must have been opened for reading.
		
		Asynchronously reads the entire contents of a file. The underlying file will _not_ be closed automatically.
		The `FileHandle` must have been opened for reading.
		
		Asynchronously reads the entire contents of a file. The underlying file will _not_ be closed automatically.
		The `FileHandle` must have been opened for reading.
	**/
	@:overload(function(options:haxe.extern.EitherType<String, { var encoding : String; @:optional var flag : haxe.extern.EitherType<String, Float>; }>):js.lib.IPromise<String> { })
	@:overload(function(?options:haxe.extern.EitherType<String, { @:optional var encoding : String; @:optional var flag : haxe.extern.EitherType<String, Float>; }>):js.lib.IPromise<haxe.extern.EitherType<String, global.IBuffer>> { })
	function readFile(?options:{ @:optional var encoding : Any; @:optional var flag : haxe.extern.EitherType<String, Float>; }):js.lib.IPromise<global.IBuffer>;
	/**
		Asynchronous fstat(2) - Get file status.
	**/
	function stat():js.lib.IPromise<node.fs.Stats>;
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	function truncate(?len:Float):js.lib.IPromise<Void>;
	/**
		Asynchronously change file timestamps of the file.
	**/
	function utimes(atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.IDate>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.IDate>>):js.lib.IPromise<Void>;
	/**
		Asynchronously writes `buffer` to the file.
		The `FileHandle` must have been opened for writing.
		
		Asynchronously writes `string` to the file.
		The `FileHandle` must have been opened for writing.
		It is unsafe to call `write()` multiple times on the same file without waiting for the `Promise`
		to be resolved (or rejected). For this scenario, `fs.createWriteStream` is strongly recommended.
	**/
	@:overload(function(data:Any, ?position:Float, ?encoding:String):js.lib.IPromise<{
		var bytesWritten : Float;
		var buffer : String;
	}> { })
	function write<TBuffer:(haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>)>(buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):js.lib.IPromise<{
		var bytesWritten : Float;
		var buffer : TBuffer;
	}>;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists. The underlying file will _not_ be closed automatically.
		The `FileHandle` must have been opened for writing.
		It is unsafe to call `writeFile()` multiple times on the same file without waiting for the `Promise` to be resolved (or rejected).
	**/
	function writeFile(data:Any, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; @:optional var mode : haxe.extern.EitherType<String, Float>; @:optional var flag : haxe.extern.EitherType<String, Float>; }>):js.lib.IPromise<Void>;
	/**
		Asynchronous close(2) - close a `FileHandle`.
	**/
	function close():js.lib.IPromise<Void>;
};