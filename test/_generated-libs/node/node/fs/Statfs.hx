package node.fs;

/**
	Asynchronous [`statfs(2)`](http://man7.org/linux/man-pages/man2/statfs.2.html). Returns information about the mounted file system which
	contains `path`. The callback gets two arguments `(err, stats)` where `stats`is an `fs.StatFs` object.
	
	In case of an error, the `err.code` will be one of `Common System Errors`.
**/
@:jsRequire("fs", "statfs") @valueModuleOnly extern class Statfs {
	/**
		Asynchronous [`statfs(2)`](http://man7.org/linux/man-pages/man2/statfs.2.html). Returns information about the mounted file system which
		contains `path`. The callback gets two arguments `(err, stats)` where `stats`is an `fs.StatFs` object.
		
		In case of an error, the `err.code` will be one of `Common System Errors`.
	**/
	@:overload(function(path:PathLike, options:Null<StatFsOptions & { @:optional var bigint : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, stats:StatsFs) -> Void):Void { })
	@:overload(function(path:PathLike, options:Dynamic, callback:(err:Null<global.nodejs.ErrnoException>, stats:BigIntStatsFs) -> Void):Void { })
	@:overload(function(path:PathLike, options:Null<StatFsOptions>, callback:(err:Null<global.nodejs.ErrnoException>, stats:ts.AnyOf2<StatsFs, BigIntStatsFs>) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, callback:(err:Null<global.nodejs.ErrnoException>, stats:StatsFs) -> Void):Void;
}