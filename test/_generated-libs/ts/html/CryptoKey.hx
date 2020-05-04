package ts.html;
/**
	The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
**/
@:native("CryptoKey") extern class CryptoKey {
	function new();
	final algorithm : KeyAlgorithm;
	final extractable : Bool;
	final type : KeyType;
	final usages : Array<KeyUsage>;
	static var prototype : ICryptoKey;
}