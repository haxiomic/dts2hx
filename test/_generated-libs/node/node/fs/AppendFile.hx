package node.fs;

/**
	Asynchronously append data to a file, creating the file if it does not exist.
**/
@:jsRequire("fs", "appendFile") @valueModuleOnly extern class AppendFile {
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	@:overload(function(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	@:selfCall
	static function call(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, options:WriteFileOptions, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}