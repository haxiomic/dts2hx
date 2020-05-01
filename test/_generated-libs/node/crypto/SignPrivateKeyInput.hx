package node.crypto;
typedef SignPrivateKeyInput = {
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	var key : ts.AnyOf2<String, global.IBuffer>;
	@:optional
	var format : String;
	@:optional
	var type : String;
	@:optional
	var passphrase : ts.AnyOf2<String, global.IBuffer>;
};