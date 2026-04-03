package node.crypto;

typedef CipherInfoOptions = {
	/**
		A test key length.
	**/
	@:optional
	var keyLength : Float;
	/**
		A test IV length.
	**/
	@:optional
	var ivLength : Float;
};