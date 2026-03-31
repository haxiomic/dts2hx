package node.fs;

/**
	Asynchronously writes data to a file, replacing the file if it already exists.
**/
@:jsRequire("fs", "writeFile") @valueModuleOnly extern class WriteFile {
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, callback:(err:global.nodejs.ErrnoException) -> Void):Void { })
	@:selfCall
	static function call(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:Dynamic, options:WriteFileOptions, callback:(err:global.nodejs.ErrnoException) -> Void):Void;
}