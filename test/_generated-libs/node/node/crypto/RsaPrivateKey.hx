package node.crypto;

typedef RsaPrivateKey = {
	var key : KeyLike;
	@:optional
	var passphrase : String;
	@:optional
	var padding : Float;
};