package node.crypto.webcrypto;

typedef CryptoKey = {
	/**
		An object detailing the algorithm for which the key can be used along with additional algorithm-specific parameters.
	**/
	final algorithm : KeyAlgorithm;
	/**
		When `true`, the
		{@link
		CryptoKey
		}
		can be extracted using either `subtleCrypto.exportKey()` or `subtleCrypto.wrapKey()`.
	**/
	final extractable : Bool;
	/**
		A string identifying whether the key is a symmetric (`'secret'`) or asymmetric (`'private'` or `'public'`) key.
	**/
	final type : KeyType;
	/**
		An array of strings identifying the operations for which the key may be used.
		
		The possible usages are:
		- `'encrypt'` - The key may be used to encrypt data.
		- `'decrypt'` - The key may be used to decrypt data.
		- `'sign'` - The key may be used to generate digital signatures.
		- `'verify'` - The key may be used to verify digital signatures.
		- `'deriveKey'` - The key may be used to derive a new key.
		- `'deriveBits'` - The key may be used to derive bits.
		- `'wrapKey'` - The key may be used to wrap another key.
		- `'unwrapKey'` - The key may be used to unwrap another key.
		
		Valid key usages depend on the key algorithm (identified by `cryptokey.algorithm.name`).
	**/
	final usages : Array<KeyUsage>;
};