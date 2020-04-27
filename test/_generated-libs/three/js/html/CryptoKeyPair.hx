package js.html;
/**
	The CryptoKeyPair dictionary of the Web Crypto API represents a key pair for an asymmetric cryptography algorithm, also known as a public-key algorithm.
**/
@:native("CryptoKeyPair") @tsInterface extern class CryptoKeyPair {
	function new();
	var privateKey : CryptoKey;
	var publicKey : CryptoKey;
	static var prototype : CryptoKeyPair;
}