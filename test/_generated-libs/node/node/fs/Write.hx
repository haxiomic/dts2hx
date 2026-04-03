package node.fs;

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
@:jsRequire("fs", "write") @valueModuleOnly extern class Write {
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
	**/
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, options:WriteOptions, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function(fd:Float, string:String, position:Null<Float>, encoding:Null<global.nodejs.BufferEncoding>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:String, position:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:String, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	@:selfCall
	static function call<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, position:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void;
}