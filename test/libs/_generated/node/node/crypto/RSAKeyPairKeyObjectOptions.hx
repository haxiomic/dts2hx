package node.crypto;
extern interface RSAKeyPairKeyObjectOptions {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	@:optional
	var publicExponent : Null<Float>;
}