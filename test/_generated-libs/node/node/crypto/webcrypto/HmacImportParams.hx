package node.crypto.webcrypto;

typedef HmacImportParams = {
	var hash : AlgorithmIdentifier;
	@:optional
	var length : Float;
	var name : String;
};