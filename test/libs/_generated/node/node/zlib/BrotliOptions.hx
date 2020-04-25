package node.zlib;
extern interface BrotliOptions {
	@:optional
	var flush : Null<Float>;
	@:optional
	var finishFlush : Null<Float>;
	@:optional
	var chunkSize : Null<Float>;
	@:optional
	var params : Null<{ }>;
}