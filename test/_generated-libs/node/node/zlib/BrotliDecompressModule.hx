package node.zlib;

@:jsRequire("zlib", "brotliDecompress") @valueModuleOnly extern class BrotliDecompressModule {
	@:overload(function(buf:InputType, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, options:BrotliOptions, callback:CompressCallback):Void;
}