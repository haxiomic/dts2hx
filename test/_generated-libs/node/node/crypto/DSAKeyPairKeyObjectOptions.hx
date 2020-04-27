package node.crypto;
extern interface DSAKeyPairKeyObjectOptions {
	/**
		Key size in bits
	**/
	var modulusLength : Float;
	/**
		Size of q in bits
	**/
	var divisorLength : Float;
}