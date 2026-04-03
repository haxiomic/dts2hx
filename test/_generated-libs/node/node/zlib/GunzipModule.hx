package node.zlib;

@:jsRequire("zlib", "gunzip") @valueModuleOnly extern class GunzipModule {
	@:overload(function(buf:InputType, options:ZlibOptions, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, callback:CompressCallback):Void;
}