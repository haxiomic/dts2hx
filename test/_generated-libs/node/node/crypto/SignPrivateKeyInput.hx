package node.crypto;

typedef SignPrivateKeyInput = {
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	var key : ts.AnyOf2<String, global.Buffer>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
	@:optional
	var passphrase : ts.AnyOf2<String, global.Buffer>;
};