package node.fs;

/**
	Asynchronously creates a unique temporary directory.
	Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
**/
@:jsRequire("fs", "mkdtemp") @valueModuleOnly extern class Mkdtemp {
	/**
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:ts.AnyOf2<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, folder:global.Buffer) -> Void):Void { })
	@:overload(function(prefix:String, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, folder:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(prefix:String, callback:(err:global.nodejs.ErrnoException, folder:String) -> Void):Void { })
	@:selfCall
	static function call(prefix:String, options:Null<ts.AnyOf2<String, { @:optional var encoding : global.BufferEncoding; }>>, callback:(err:global.nodejs.ErrnoException, folder:String) -> Void):Void;
}