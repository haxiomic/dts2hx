package node.crypto.webcrypto;

typedef RsaHashedKeyAlgorithm = {
	var hash : KeyAlgorithm;
	var modulusLength : Float;
	var publicExponent : BigInteger;
	var name : String;
};