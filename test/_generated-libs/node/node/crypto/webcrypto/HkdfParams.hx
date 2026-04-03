package node.crypto.webcrypto;

typedef HkdfParams = {
	var hash : AlgorithmIdentifier;
	var info : BufferSource;
	var salt : BufferSource;
	var name : String;
};