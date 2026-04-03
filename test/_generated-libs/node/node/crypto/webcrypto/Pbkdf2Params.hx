package node.crypto.webcrypto;

typedef Pbkdf2Params = {
	var hash : AlgorithmIdentifier;
	var iterations : Float;
	var salt : BufferSource;
	var name : String;
};