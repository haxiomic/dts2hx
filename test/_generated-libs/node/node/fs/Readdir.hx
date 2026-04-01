package node.fs;

/**
	Asynchronous readdir(3) - read a directory.
**/
@:jsRequire("fs", "readdir") @valueModuleOnly extern class Readdir {
	/**
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; }>, callback:(err:global.nodejs.ErrnoException, files:Array<global.Buffer>) -> Void):Void { })
	@:overload(function(path:PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; @:optional var withFileTypes : Bool; }>>, callback:(err:global.nodejs.ErrnoException, files:ts.AnyOf2<Array<String>, Array<global.Buffer>>) -> Void):Void { })
	@:overload(function(path:PathLike, callback:(err:global.nodejs.ErrnoException, files:Array<String>) -> Void):Void { })
	@:overload(function(path:PathLike, options:{ var withFileTypes : Bool; }, callback:(err:global.nodejs.ErrnoException, files:Array<Dirent>) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, options:Null<ts.AnyOf2<String, { var encoding : Null<global.BufferEncoding>; @:optional var withFileTypes : Bool; }>>, callback:(err:global.nodejs.ErrnoException, files:Array<String>) -> Void):Void;
}