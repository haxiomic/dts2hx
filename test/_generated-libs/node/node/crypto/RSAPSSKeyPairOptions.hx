package node.crypto;

typedef RSAPSSKeyPairOptions<PubF:(KeyFormat), PrivF:(KeyFormat)> = {
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
	var publicKeyEncoding : {
		var type : String;
		var format : PubF;
	};
	var privateKeyEncoding : BasePrivateKeyEncodingOptions<PrivF> & {
		var type : String;
	};
};