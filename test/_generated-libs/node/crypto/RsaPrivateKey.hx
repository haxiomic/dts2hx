package node.crypto;
extern typedef RsaPrivateKey = {
	var key : ts.AnyOf3<String, global.IBuffer, KeyObject>;
	@:optional
	var passphrase : String;
	@:optional
	var padding : Float;
};