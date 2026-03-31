package node.fs;

/**
	Asynchronously reads the entire contents of a file.
**/
@:jsRequire("fs", "readFile") @valueModuleOnly extern class ReadFile {
	/**
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:ts.AnyOf2<String, { var encoding : String; @:optional var flag : String; }>, callback:(err:global.nodejs.ErrnoException, data:String) -> Void):Void { })
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:Null<ts.AnyOf2<String, { @:optional var encoding : String; @:optional var flag : String; }>>, callback:(err:global.nodejs.ErrnoException, data:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, callback:(err:global.nodejs.ErrnoException, data:global.Buffer) -> Void):Void { })
	@:selfCall
	static function call(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:Null<{ @:optional var encoding : Any; @:optional var flag : String; }>, callback:(err:global.nodejs.ErrnoException, data:global.Buffer) -> Void):Void;
}