package node.crypto;

typedef DSAKeyPairOptions<PubF, PrivF> = {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	/**
		Size of q in bits
	**/
	var divisorLength : Float;
	var publicKeyEncoding : {
		var type : String;
		var format : PubF;
	};
	var privateKeyEncoding : BasePrivateKeyEncodingOptions<PrivF> & {
		var type : String;
	};
};