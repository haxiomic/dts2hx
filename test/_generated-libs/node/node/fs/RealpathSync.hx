package node.fs;

/**
	Synchronous realpath(3) - return the canonicalized absolute pathname.
**/
@:jsRequire("fs", "realpathSync") @valueModuleOnly extern class RealpathSync {
	/**
		Synchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; }>):global.Buffer { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.AnyOf2<String, global.Buffer> { })
	@:selfCall
	static function call(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : global.BufferEncoding; }>):String;
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; }>):global.Buffer { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : String; }>):ts.AnyOf2<String, global.Buffer> { })
	static function native(path:PathLike, ?options:ts.AnyOf2<String, { @:optional var encoding : global.BufferEncoding; }>):String;
}