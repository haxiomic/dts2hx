package node.zlib;

@:jsRequire("zlib", "unzip") @valueModuleOnly extern class UnzipModule {
	@:overload(function(buf:InputType, options:ZlibOptions, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, callback:CompressCallback):Void;
}