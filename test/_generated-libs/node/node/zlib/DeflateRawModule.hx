package node.zlib;

@:jsRequire("zlib", "deflateRaw") @valueModuleOnly extern class DeflateRawModule {
	@:overload(function(buf:InputType, options:ZlibOptions, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, callback:CompressCallback):Void;
}