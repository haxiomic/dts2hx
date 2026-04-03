package node.fs;

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
@:jsRequire("fs", "readlink") @valueModuleOnly extern class Readlink {
	/**
		Reads the contents of the symbolic link referred to by `path`. The callback gets
		two arguments `(err, linkString)`.
		
		See the POSIX [`readlink(2)`](http://man7.org/linux/man-pages/man2/readlink.2.html) documentation for more details.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the link path passed to the callback. If the `encoding` is set to `'buffer'`,
		the link path returned will be passed as a `Buffer` object.
	**/
	@:overload(function(path:PathLike, options:BufferEncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, linkString:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(path:PathLike, options:EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, linkString:ts.AnyOf2<String, node.buffer.NonSharedBuffer>) -> Void):Void { })
	@:overload(function(path:PathLike, callback:(err:Null<global.nodejs.ErrnoException>, linkString:String) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, options:EncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, linkString:String) -> Void):Void;
}