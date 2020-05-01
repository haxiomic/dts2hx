package ts.html;
/**
	Basic cryptography features available in the current context. It allows access to a cryptographically strong random number generator and to cryptographic primitives.
**/
typedef ICrypto = {
	final subtle : ISubtleCrypto;
	function getRandomValues<T>(array:T):T;
};