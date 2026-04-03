package node.fs;

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
@:jsRequire("fs", "readdir") @valueModuleOnly extern class Readdir {
	/**
		Reads the contents of a directory. The callback gets two arguments `(err, files)` where `files` is an array of the names of the files in the directory excluding `'.'` and `'..'`.
		
		See the POSIX [`readdir(3)`](http://man7.org/linux/man-pages/man3/readdir.3.html) documentation for more details.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the filenames passed to the callback. If the `encoding` is set to `'buffer'`,
		the filenames returned will be passed as `Buffer` objects.
		
		If `options.withFileTypes` is set to `true`, the `files` array will contain `fs.Dirent` objects.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<node.buffer.NonSharedBuffer>) -> Void):Void { })
	@:overload(function(path:PathLike, options:Null<ts.AnyOf2<String, ObjectEncodingOptions & { @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>>, callback:(err:Null<global.nodejs.ErrnoException>, files:ts.AnyOf2<Array<String>, Array<node.buffer.NonSharedBuffer>>) -> Void):Void { })
	@:overload(function(path:PathLike, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<String>) -> Void):Void { })
	@:overload(function(path:PathLike, options:ObjectEncodingOptions & { var withFileTypes : Bool; @:optional var recursive : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<Dirent<String>>) -> Void):Void { })
	@:overload(function(path:PathLike, options:{ var encoding : String; var withFileTypes : Bool; @:optional var recursive : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<Dirent<node.buffer.NonSharedBuffer>>) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, options:Null<ts.AnyOf2<String, { var encoding : Null<global.nodejs.BufferEncoding>; @:optional var withFileTypes : Bool; @:optional var recursive : Bool; }>>, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<String>) -> Void):Void;
}