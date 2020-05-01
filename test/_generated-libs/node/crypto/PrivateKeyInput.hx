package node.crypto;
typedef PrivateKeyInput = {
	var key : ts.AnyOf2<String, global.IBuffer>;
	@:optional
	var format : String;
	@:optional
	var type : String;
	@:optional
	var passphrase : ts.AnyOf2<String, global.IBuffer>;
};