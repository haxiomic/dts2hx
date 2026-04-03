package node.crypto.webcrypto;

typedef SubtleCrypto = {
	/**
		Using the method and parameters specified in `algorithm` and the keying material provided by `key`,
		`subtle.decrypt()` attempts to decipher the provided `data`. If successful,
		the returned promise will be resolved with an `<ArrayBuffer>` containing the plaintext result.
		
		The algorithms currently supported include:
		
		- `'RSA-OAEP'`
		- `'AES-CTR'`
		- `'AES-CBC'`
		- `'AES-GCM'`
	**/
	function decrypt(algorithm:ts.AnyOf6<String, Algorithm, AesCbcParams, AesCtrParams, AesGcmParams, RsaOaepParams>, key:CryptoKey, data:BufferSource):js.lib.Promise<js.lib.ArrayBuffer>;
	/**
		Using the method and parameters specified in `algorithm` and the keying material provided by `baseKey`,
		`subtle.deriveBits()` attempts to generate `length` bits.
		The Node.js implementation requires that when `length` is a number it must be multiple of `8`.
		When `length` is `null` the maximum number of bits for a given algorithm is generated. This is allowed
		for the `'ECDH'`, `'X25519'`, and `'X448'` algorithms.
		If successful, the returned promise will be resolved with an `<ArrayBuffer>` containing the generated data.
		
		The algorithms currently supported include:
		
		- `'ECDH'`
		- `'X25519'`
		- `'X448'`
		- `'HKDF'`
		- `'PBKDF2'`
	**/
	@:overload(function(algorithm:ts.AnyOf4<String, Algorithm, HkdfParams, Pbkdf2Params>, baseKey:CryptoKey, length:Float):js.lib.Promise<js.lib.ArrayBuffer> { })
	function deriveBits(algorithm:EcdhKeyDeriveParams, baseKey:CryptoKey, length:Null<Float>):js.lib.Promise<js.lib.ArrayBuffer>;
	/**
		Using the method and parameters specified in `algorithm`, and the keying material provided by `baseKey`,
		`subtle.deriveKey()` attempts to generate a new <CryptoKey>` based on the method and parameters in `derivedKeyAlgorithm`.
		
		Calling `subtle.deriveKey()` is equivalent to calling `subtle.deriveBits()` to generate raw keying material,
		then passing the result into the `subtle.importKey()` method using the `deriveKeyAlgorithm`, `extractable`, and `keyUsages` parameters as input.
		
		The algorithms currently supported include:
		
		- `'ECDH'`
		- `'X25519'`
		- `'X448'`
		- `'HKDF'`
		- `'PBKDF2'`
	**/
	function deriveKey(algorithm:ts.AnyOf5<String, Algorithm, EcdhKeyDeriveParams, HkdfParams, Pbkdf2Params>, baseKey:CryptoKey, derivedKeyAlgorithm:ts.AnyOf6<String, Algorithm, AesDerivedKeyParams, HkdfParams, HmacImportParams, Pbkdf2Params>, extractable:Bool, keyUsages:haxe.ds.ReadOnlyArray<KeyUsage>):js.lib.Promise<CryptoKey>;
	/**
		Using the method identified by `algorithm`, `subtle.digest()` attempts to generate a digest of `data`.
		If successful, the returned promise is resolved with an `<ArrayBuffer>` containing the computed digest.
		
		If `algorithm` is provided as a `<string>`, it must be one of:
		
		- `'SHA-1'`
		- `'SHA-256'`
		- `'SHA-384'`
		- `'SHA-512'`
		
		If `algorithm` is provided as an `<Object>`, it must have a `name` property whose value is one of the above.
	**/
	function digest(algorithm:AlgorithmIdentifier, data:BufferSource):js.lib.Promise<js.lib.ArrayBuffer>;
	/**
		Using the method and parameters specified by `algorithm` and the keying material provided by `key`,
		`subtle.encrypt()` attempts to encipher `data`. If successful,
		the returned promise is resolved with an `<ArrayBuffer>` containing the encrypted result.
		
		The algorithms currently supported include:
		
		- `'RSA-OAEP'`
		- `'AES-CTR'`
		- `'AES-CBC'`
		- `'AES-GCM'`
	**/
	function encrypt(algorithm:ts.AnyOf6<String, Algorithm, AesCbcParams, AesCtrParams, AesGcmParams, RsaOaepParams>, key:CryptoKey, data:BufferSource):js.lib.Promise<js.lib.ArrayBuffer>;
	/**
		Exports the given key into the specified format, if supported.
		
		If the `<CryptoKey>` is not extractable, the returned promise will reject.
		
		When `format` is either `'pkcs8'` or `'spki'` and the export is successful,
		the returned promise will be resolved with an `<ArrayBuffer>` containing the exported key data.
		
		When `format` is `'jwk'` and the export is successful, the returned promise will be resolved with a
		JavaScript object conforming to the
		{@link
		https://tools.ietf.org/html/rfc7517 JSON Web Key
		}
		specification.
	**/
	@:overload(function(format:String, key:CryptoKey):js.lib.Promise<js.lib.ArrayBuffer> { })
	function exportKey(format:String, key:CryptoKey):js.lib.Promise<JsonWebKey>;
	/**
		Using the method and parameters provided in `algorithm`,
		`subtle.generateKey()` attempts to generate new keying material.
		Depending the method used, the method may generate either a single `<CryptoKey>` or a `<CryptoKeyPair>`.
		
		The `<CryptoKeyPair>` (public and private key) generating algorithms supported include:
		
		- `'RSASSA-PKCS1-v1_5'`
		- `'RSA-PSS'`
		- `'RSA-OAEP'`
		- `'ECDSA'`
		- `'Ed25519'`
		- `'Ed448'`
		- `'ECDH'`
		- `'X25519'`
		- `'X448'`
		The `<CryptoKey>` (secret key) generating algorithms supported include:
		
		- `'HMAC'`
		- `'AES-CTR'`
		- `'AES-CBC'`
		- `'AES-GCM'`
		- `'AES-KW'`
	**/
	@:overload(function(algorithm:ts.AnyOf3<AesKeyGenParams, HmacKeyGenParams, Pbkdf2Params>, extractable:Bool, keyUsages:haxe.ds.ReadOnlyArray<KeyUsage>):js.lib.Promise<CryptoKey> { })
	@:overload(function(algorithm:AlgorithmIdentifier, extractable:Bool, keyUsages:Array<KeyUsage>):js.lib.Promise<ts.AnyOf2<CryptoKey, CryptoKeyPair>> { })
	function generateKey(algorithm:ts.AnyOf2<EcKeyGenParams, RsaHashedKeyGenParams>, extractable:Bool, keyUsages:haxe.ds.ReadOnlyArray<KeyUsage>):js.lib.Promise<CryptoKeyPair>;
	/**
		The `subtle.importKey()` method attempts to interpret the provided `keyData` as the given `format`
		to create a `<CryptoKey>` instance using the provided `algorithm`, `extractable`, and `keyUsages` arguments.
		If the import is successful, the returned promise will be resolved with the created `<CryptoKey>`.
		
		If importing a `'PBKDF2'` key, `extractable` must be `false`.
	**/
	@:overload(function(format:String, keyData:BufferSource, algorithm:ts.AnyOf6<String, Algorithm, AesKeyAlgorithm, EcKeyImportParams, HmacImportParams, RsaHashedImportParams>, extractable:Bool, keyUsages:Array<KeyUsage>):js.lib.Promise<CryptoKey> { })
	function importKey(format:String, keyData:JsonWebKey, algorithm:ts.AnyOf6<String, Algorithm, AesKeyAlgorithm, EcKeyImportParams, HmacImportParams, RsaHashedImportParams>, extractable:Bool, keyUsages:haxe.ds.ReadOnlyArray<KeyUsage>):js.lib.Promise<CryptoKey>;
	/**
		Using the method and parameters given by `algorithm` and the keying material provided by `key`,
		`subtle.sign()` attempts to generate a cryptographic signature of `data`. If successful,
		the returned promise is resolved with an `<ArrayBuffer>` containing the generated signature.
		
		The algorithms currently supported include:
		
		- `'RSASSA-PKCS1-v1_5'`
		- `'RSA-PSS'`
		- `'ECDSA'`
		- `'Ed25519'`
		- `'Ed448'`
		- `'HMAC'`
	**/
	function sign(algorithm:ts.AnyOf5<String, Algorithm, EcdsaParams, Ed448Params, RsaPssParams>, key:CryptoKey, data:BufferSource):js.lib.Promise<js.lib.ArrayBuffer>;
	/**
		In cryptography, "wrapping a key" refers to exporting and then encrypting the keying material.
		The `subtle.unwrapKey()` method attempts to decrypt a wrapped key and create a `<CryptoKey>` instance.
		It is equivalent to calling `subtle.decrypt()` first on the encrypted key data (using the `wrappedKey`, `unwrapAlgo`, and `unwrappingKey` arguments as input)
		then passing the results in to the `subtle.importKey()` method using the `unwrappedKeyAlgo`, `extractable`, and `keyUsages` arguments as inputs.
		If successful, the returned promise is resolved with a `<CryptoKey>` object.
		
		The wrapping algorithms currently supported include:
		
		- `'RSA-OAEP'`
		- `'AES-CTR'`
		- `'AES-CBC'`
		- `'AES-GCM'`
		- `'AES-KW'`
		
		The unwrapped key algorithms supported include:
		
		- `'RSASSA-PKCS1-v1_5'`
		- `'RSA-PSS'`
		- `'RSA-OAEP'`
		- `'ECDSA'`
		- `'Ed25519'`
		- `'Ed448'`
		- `'ECDH'`
		- `'X25519'`
		- `'X448'`
		- `'HMAC'`
		- `'AES-CTR'`
		- `'AES-CBC'`
		- `'AES-GCM'`
		- `'AES-KW'`
	**/
	function unwrapKey(format:KeyFormat, wrappedKey:BufferSource, unwrappingKey:CryptoKey, unwrapAlgorithm:ts.AnyOf6<String, Algorithm, AesCbcParams, AesCtrParams, AesGcmParams, RsaOaepParams>, unwrappedKeyAlgorithm:ts.AnyOf6<String, Algorithm, AesKeyAlgorithm, EcKeyImportParams, HmacImportParams, RsaHashedImportParams>, extractable:Bool, keyUsages:Array<KeyUsage>):js.lib.Promise<CryptoKey>;
	/**
		Using the method and parameters given in `algorithm` and the keying material provided by `key`,
		`subtle.verify()` attempts to verify that `signature` is a valid cryptographic signature of `data`.
		The returned promise is resolved with either `true` or `false`.
		
		The algorithms currently supported include:
		
		- `'RSASSA-PKCS1-v1_5'`
		- `'RSA-PSS'`
		- `'ECDSA'`
		- `'Ed25519'`
		- `'Ed448'`
		- `'HMAC'`
	**/
	function verify(algorithm:ts.AnyOf5<String, Algorithm, EcdsaParams, Ed448Params, RsaPssParams>, key:CryptoKey, signature:BufferSource, data:BufferSource):js.lib.Promise<Bool>;
	/**
		In cryptography, "wrapping a key" refers to exporting and then encrypting the keying material.
		The `subtle.wrapKey()` method exports the keying material into the format identified by `format`,
		then encrypts it using the method and parameters specified by `wrapAlgo` and the keying material provided by `wrappingKey`.
		It is the equivalent to calling `subtle.exportKey()` using `format` and `key` as the arguments,
		then passing the result to the `subtle.encrypt()` method using `wrappingKey` and `wrapAlgo` as inputs.
		If successful, the returned promise will be resolved with an `<ArrayBuffer>` containing the encrypted key data.
		
		The wrapping algorithms currently supported include:
		
		- `'RSA-OAEP'`
		- `'AES-CTR'`
		- `'AES-CBC'`
		- `'AES-GCM'`
		- `'AES-KW'`
	**/
	function wrapKey(format:KeyFormat, key:CryptoKey, wrappingKey:CryptoKey, wrapAlgorithm:ts.AnyOf6<String, Algorithm, AesCbcParams, AesCtrParams, AesGcmParams, RsaOaepParams>):js.lib.Promise<js.lib.ArrayBuffer>;
};