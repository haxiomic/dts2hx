package ts.html;
/**
	The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
**/
typedef ICryptoKey = {
	final algorithm : KeyAlgorithm;
	final extractable : Bool;
	final type : KeyType;
	final usages : std.Array<KeyUsage>;
};