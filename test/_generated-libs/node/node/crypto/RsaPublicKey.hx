package node.crypto;

typedef RsaPublicKey = {
	var key : KeyLike;
	@:optional
	var padding : Float;
};