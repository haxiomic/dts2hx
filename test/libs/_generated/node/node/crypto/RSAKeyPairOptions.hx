package node.crypto;
extern interface RSAKeyPairOptions<PubF:(String), PrivF:(String)> {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	@:optional
	var publicExponent : Float;
	var publicKeyEncoding : { var type : String; var format : PubF; };
	var privateKeyEncoding : Any;
}