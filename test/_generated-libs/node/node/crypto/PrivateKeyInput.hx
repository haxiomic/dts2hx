package node.crypto;

typedef PrivateKeyInput = {
	var key : ts.AnyOf2<String, global.Buffer>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
	@:optional
	var passphrase : ts.AnyOf2<String, global.Buffer>;
};