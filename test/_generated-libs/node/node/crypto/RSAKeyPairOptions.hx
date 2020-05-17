package node.crypto;

typedef RSAKeyPairOptions<PubF, PrivF> = {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	@:optional
	var publicExponent : Float;
	var publicKeyEncoding : {
		var type : String;
		var format : PubF;
	};
	var privateKeyEncoding : BasePrivateKeyEncodingOptions<PrivF> & {
		var type : String;
	};
};