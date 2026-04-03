package node.fs;

/**
	Invokes the callback with the `fs.Stats` for the file descriptor.
	
	See the POSIX [`fstat(2)`](http://man7.org/linux/man-pages/man2/fstat.2.html) documentation for more detail.
**/
@:jsRequire("fs", "fstat") @valueModuleOnly extern class Fstat {
	/**
		Invokes the callback with the `fs.Stats` for the file descriptor.
		
		See the POSIX [`fstat(2)`](http://man7.org/linux/man-pages/man2/fstat.2.html) documentation for more detail.
	**/
	@:overload(function(fd:Float, options:Null<StatOptions & { @:optional var bigint : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, stats:Stats) -> Void):Void { })
	@:overload(function(fd:Float, options:Dynamic, callback:(err:Null<global.nodejs.ErrnoException>, stats:BigIntStats) -> Void):Void { })
	@:overload(function(fd:Float, options:Null<StatOptions>, callback:(err:Null<global.nodejs.ErrnoException>, stats:ts.AnyOf2<Stats, BigIntStats>) -> Void):Void { })
	@:selfCall
	static function call(fd:Float, callback:(err:Null<global.nodejs.ErrnoException>, stats:Stats) -> Void):Void;
}