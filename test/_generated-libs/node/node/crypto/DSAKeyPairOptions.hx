package node.crypto;
extern interface DSAKeyPairOptions<PubF:(String), PrivF:(String)> {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	/**
		Size of q in bits
	**/
	var divisorLength : Float;
	var publicKeyEncoding : { var type : String; var format : PubF; };
	var privateKeyEncoding : Any;
}