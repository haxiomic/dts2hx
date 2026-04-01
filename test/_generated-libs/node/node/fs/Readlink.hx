package node.fs;

/**
	Asynchronous readlink(2) - read value of a symbolic link.
**/
@:jsRequire("fs", "readlink") @valueModuleOnly extern class Readlink {
	/**
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, linkString:global.Buffer) -> Void):Void { })
	@:overload(function(path:PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, linkString:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:PathLike, callback:(err:global.nodejs.ErrnoException, linkString:String) -> Void):Void { })
	@:selfCall
	static function call(path:PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : global.BufferEncoding; }>>, callback:(err:global.nodejs.ErrnoException, linkString:String) -> Void):Void;
}