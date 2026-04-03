package node.crypto;

typedef PublicKeyInput = {
	var key : ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
	@:optional
	var encoding : String;
};