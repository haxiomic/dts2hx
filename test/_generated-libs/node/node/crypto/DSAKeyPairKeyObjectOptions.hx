package node.crypto;

typedef DSAKeyPairKeyObjectOptions = {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	/**
		Size of q in bits
	**/
	var divisorLength : Float;
};