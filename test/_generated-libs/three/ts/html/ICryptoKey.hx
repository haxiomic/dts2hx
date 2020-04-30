package ts.html;
/**
	The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
**/
extern typedef ICryptoKey = {
	final algorithm : KeyAlgorithm;
	final extractable : Bool;
	final type : String;
	final usages : std.Array<String>;
};