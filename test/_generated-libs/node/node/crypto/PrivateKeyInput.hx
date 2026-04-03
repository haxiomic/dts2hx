package node.crypto;

typedef PrivateKeyInput = {
	var key : ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
	@:optional
	var passphrase : ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>;
	@:optional
	var encoding : String;
};