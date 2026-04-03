package node.zlib;

@:jsRequire("zlib", "brotliCompress") @valueModuleOnly extern class BrotliCompressModule {
	@:overload(function(buf:InputType, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, options:BrotliOptions, callback:CompressCallback):Void;
}