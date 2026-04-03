package node.fs;

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
@:jsRequire("fs", "readv") @valueModuleOnly extern class Readv {
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
	@:selfCall
	static function call<TBuffers:(haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>)>(fd:Float, buffers:TBuffers, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:TBuffers) -> Void):Void;
}