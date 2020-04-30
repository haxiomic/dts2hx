package ts.html;
/**
	Basic cryptography features available in the current context. It allows access to a cryptographically strong random number generator and to cryptographic primitives.
**/
@:native("Crypto") extern class Crypto {
	function new();
	final subtle : ISubtleCrypto;
	function getRandomValues<T>(array:T):T;
	static var prototype : ICrypto;
}