package node.crypto;

typedef RSAPSSKeyPairKeyObjectOptions = {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	/**
		Public exponent
	**/
	@:optional
	var publicExponent : Float;
	/**
		Name of the message digest
	**/
	@:optional
	var hashAlgorithm : String;
	/**
		Name of the message digest used by MGF1
	**/
	@:optional
	var mgf1HashAlgorithm : String;
	/**
		Minimal salt length in bytes
	**/
	@:optional
	var saltLength : String;
};