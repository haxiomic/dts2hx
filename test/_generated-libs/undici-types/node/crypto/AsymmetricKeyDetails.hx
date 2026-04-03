package node.crypto;

typedef AsymmetricKeyDetails = {
	/**
		Key size in bits (RSA, DSA).
	**/
	@:optional
	var modulusLength : Float;
	/**
		Public exponent (RSA).
	**/
	@:optional
	var publicExponent : ts.BigInt;
	/**
		Name of the message digest (RSA-PSS).
	**/
	@:optional
	var hashAlgorithm : String;
	/**
		Name of the message digest used by MGF1 (RSA-PSS).
	**/
	@:optional
	var mgf1HashAlgorithm : String;
	/**
		Minimal salt length in bytes (RSA-PSS).
	**/
	@:optional
	var saltLength : Float;
	/**
		Size of q in bits (DSA).
	**/
	@:optional
	var divisorLength : Float;
	/**
		Name of the curve (EC).
	**/
	@:optional
	var namedCurve : String;
};