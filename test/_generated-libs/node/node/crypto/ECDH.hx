package node.crypto;

/**
	The `ECDH` class is a utility for creating Elliptic Curve Diffie-Hellman (ECDH)
	key exchanges.
	
	Instances of the `ECDH` class can be created using the
	{@link
	createECDH
	}
	function.
	
	```js
	import assert from 'node:assert';
	
	const {
	  createECDH,
	} = await import('node:crypto');
	
	// Generate Alice's keys...
	const alice = createECDH('secp521r1');
	const aliceKey = alice.generateKeys();
	
	// Generate Bob's keys...
	const bob = createECDH('secp521r1');
	const bobKey = bob.generateKeys();
	
	// Exchange and generate the secret...
	const aliceSecret = alice.computeSecret(bobKey);
	const bobSecret = bob.computeSecret(aliceKey);
	
	assert.strictEqual(aliceSecret.toString('hex'), bobSecret.toString('hex'));
	// OK
	```
**/
@:jsRequire("crypto", "ECDH") extern class ECDH {
	private function new();
	/**
		Generates private and public EC Diffie-Hellman key values, and returns
		the public key in the specified `format` and `encoding`. This key should be
		transferred to the other party.
		
		The `format` argument specifies point encoding and can be `'compressed'` or `'uncompressed'`. If `format` is not specified, the point will be returned in`'uncompressed'` format.
		
		If `encoding` is provided a string is returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding, ?format:ECDHKeyFormat):String { })
	function generateKeys():node.buffer.NonSharedBuffer;
	/**
		Computes the shared secret using `otherPublicKey` as the other
		party's public key and returns the computed shared secret. The supplied
		key is interpreted using specified `inputEncoding`, and the returned secret
		is encoded using the specified `outputEncoding`.
		If the `inputEncoding` is not
		provided, `otherPublicKey` is expected to be a `Buffer`, `TypedArray`, or `DataView`.
		
		If `outputEncoding` is given a string will be returned; otherwise a `Buffer` is returned.
		
		`ecdh.computeSecret` will throw an`ERR_CRYPTO_ECDH_INVALID_PUBLIC_KEY` error when `otherPublicKey` lies outside of the elliptic curve. Since `otherPublicKey` is
		usually supplied from a remote user over an insecure network,
		be sure to handle this exception accordingly.
	**/
	@:overload(function(otherPublicKey:String, inputEncoding:BinaryToTextEncoding):node.buffer.NonSharedBuffer { })
	@:overload(function(otherPublicKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, outputEncoding:BinaryToTextEncoding):String { })
	@:overload(function(otherPublicKey:String, inputEncoding:BinaryToTextEncoding, outputEncoding:BinaryToTextEncoding):String { })
	function computeSecret(otherPublicKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>):node.buffer.NonSharedBuffer;
	/**
		If `encoding` is specified, a string is returned; otherwise a `Buffer` is
		returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPrivateKey():node.buffer.NonSharedBuffer;
	/**
		The `format` argument specifies point encoding and can be `'compressed'` or `'uncompressed'`. If `format` is not specified the point will be returned in`'uncompressed'` format.
		
		If `encoding` is specified, a string is returned; otherwise a `Buffer` is
		returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding, ?format:ECDHKeyFormat):String { })
	function getPublicKey(?encoding:ts.Never, ?format:ECDHKeyFormat):node.buffer.NonSharedBuffer;
	/**
		Sets the EC Diffie-Hellman private key.
		If `encoding` is provided, `privateKey` is expected
		to be a string; otherwise `privateKey` is expected to be a `Buffer`, `TypedArray`, or `DataView`.
		
		If `privateKey` is not valid for the curve specified when the `ECDH` object was
		created, an error is thrown. Upon setting the private key, the associated
		public point (key) is also generated and set in the `ECDH` object.
	**/
	@:overload(function(privateKey:String, encoding:BinaryToTextEncoding):Void { })
	function setPrivateKey(privateKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>):Void;
	static var prototype : ECDH;
	/**
		Converts the EC Diffie-Hellman public key specified by `key` and `curve` to the
		format specified by `format`. The `format` argument specifies point encoding
		and can be `'compressed'`, `'uncompressed'` or `'hybrid'`. The supplied key is
		interpreted using the specified `inputEncoding`, and the returned key is encoded
		using the specified `outputEncoding`.
		
		Use
		{@link
		getCurves
		}
		to obtain a list of available curve names.
		On recent OpenSSL releases, `openssl ecparam -list_curves` will also display
		the name and description of each available elliptic curve.
		
		If `format` is not specified the point will be returned in `'uncompressed'` format.
		
		If the `inputEncoding` is not provided, `key` is expected to be a `Buffer`, `TypedArray`, or `DataView`.
		
		Example (uncompressing a key):
		
		```js
		const {
		  createECDH,
		  ECDH,
		} = await import('node:crypto');
		
		const ecdh = createECDH('secp256k1');
		ecdh.generateKeys();
		
		const compressedKey = ecdh.getPublicKey('hex', 'compressed');
		
		const uncompressedKey = ECDH.convertKey(compressedKey,
		                                        'secp256k1',
		                                        'hex',
		                                        'hex',
		                                        'uncompressed');
		
		// The converted key and the uncompressed public key should be the same
		console.log(uncompressedKey === ecdh.getPublicKey('hex'));
		```
	**/
	static function convertKey(key:BinaryLike, curve:String, ?inputEncoding:BinaryToTextEncoding, ?outputEncoding:String, ?format:String):ts.AnyOf2<String, node.buffer.NonSharedBuffer>;
}