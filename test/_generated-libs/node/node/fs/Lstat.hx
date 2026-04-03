package node.fs;

/**
	Retrieves the `fs.Stats` for the symbolic link referred to by the path.
	The callback gets two arguments `(err, stats)` where `stats` is a `fs.Stats` object. `lstat()` is identical to `stat()`, except that if `path` is a symbolic
	link, then the link itself is stat-ed, not the file that it refers to.
	
	See the POSIX [`lstat(2)`](http://man7.org/linux/man-pages/man2/lstat.2.html) documentation for more details.
**/
@:jsRequire("fs", "lstat") @valueModuleOnly extern class Lstat {
	/**
		Retrieves the `fs.Stats` for the symbolic link referred to by the path.
		The callback gets two arguments `(err, stats)` where `stats` is a `fs.Stats` object. `lstat()` is identical to `stat()`, except that if `path` is a symbolic
		link, then the link itself is stat-ed, not the file that it refers to.
		
		See the POSIX [`lstat(2)`](http://man7.org/linux/man-pages/man2/lstat.2.html) documentation for more details.
	**/
	@:overload(function(path:PathLike, options:Null<StatOptions & { @:optional var bigint : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, stats:Stats) -> Void):Void { })
	@:overload(function(path:PathLike, options:Dynamic, callback:(err:Null<global.nodejs.ErrnoException>, stats:BigIntStats) -> Void):Void { })
	@:overload(function(path:PathLike, options:Null<StatOptions>, callback:(err:Null<global.nodejs.ErrnoException>, stats:ts.AnyOf2<Stats, BigIntStats>) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, callback:(err:Null<global.nodejs.ErrnoException>, stats:Stats) -> Void):Void;
}