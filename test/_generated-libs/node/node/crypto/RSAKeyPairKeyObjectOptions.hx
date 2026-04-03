package node.crypto;

typedef RSAKeyPairKeyObjectOptions = {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	/**
		Public exponent
	**/
	@:optional
	var publicExponent : Float;
};