package node.crypto.webcrypto;

/**
	The `CryptoKeyPair` is a simple dictionary object with `publicKey` and `privateKey` properties, representing an asymmetric key pair.
**/
typedef CryptoKeyPair = {
	/**
		A
		{@link
		CryptoKey
		}
		whose type will be `'private'`.
	**/
	var privateKey : CryptoKey;
	/**
		A
		{@link
		CryptoKey
		}
		whose type will be `'public'`.
	**/
	var publicKey : CryptoKey;
};