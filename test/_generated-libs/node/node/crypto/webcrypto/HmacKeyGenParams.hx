package node.crypto.webcrypto;

typedef HmacKeyGenParams = {
	var hash : AlgorithmIdentifier;
	@:optional
	var length : Float;
	var name : String;
};