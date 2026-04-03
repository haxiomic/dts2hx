package node.zlib;

@:jsRequire("zlib", "inflate") @valueModuleOnly extern class InflateModule {
	@:overload(function(buf:InputType, options:ZlibOptions, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, callback:CompressCallback):Void;
}