package node.crypto.webcrypto;

typedef RsaHashedKeyGenParams = {
	var hash : AlgorithmIdentifier;
	var modulusLength : Float;
	var publicExponent : BigInteger;
	var name : String;
};