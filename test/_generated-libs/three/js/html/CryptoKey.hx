package js.html;
/**
	The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
**/
@:native("CryptoKey") extern class CryptoKey {
	function new();
	final algorithm : KeyAlgorithm;
	final extractable : Bool;
	final type : String;
	final usages : std.Array<String>;
	static var prototype : ICryptoKey;
}