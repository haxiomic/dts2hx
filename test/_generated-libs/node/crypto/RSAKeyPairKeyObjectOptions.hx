package node.crypto;
extern typedef RSAKeyPairKeyObjectOptions = {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	@:optional
	var publicExponent : Float;
};