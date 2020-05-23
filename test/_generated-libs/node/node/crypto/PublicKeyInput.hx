package node.crypto;

typedef PublicKeyInput = {
	var key : ts.AnyOf2<String, global.Buffer>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
};