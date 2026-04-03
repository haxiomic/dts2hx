package node.crypto;

typedef KeyExportOptions<T:(KeyFormat)> = {
	var type : String;
	var format : T;
	@:optional
	var cipher : String;
	@:optional
	var passphrase : ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>;
};