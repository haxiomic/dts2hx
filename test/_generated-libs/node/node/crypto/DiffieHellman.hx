package node.crypto;

/**
	The `DiffieHellman` class is a utility for creating Diffie-Hellman key
	exchanges.
	
	Instances of the `DiffieHellman` class can be created using the
	{@link
	createDiffieHellman
	}
	function.
	
	```js
	import assert from 'node:assert';
	
	const {
	  createDiffieHellman,
	} = await import('node:crypto');
	
	// Generate Alice's keys...
	const alice = createDiffieHellman(2048);
	const aliceKey = alice.generateKeys();
	
	// Generate Bob's keys...
	const bob = createDiffieHellman(alice.getPrime(), alice.getGenerator());
	const bobKey = bob.generateKeys();
	
	// Exchange and generate the secret...
	const aliceSecret = alice.computeSecret(bobKey);
	const bobSecret = bob.computeSecret(aliceKey);
	
	// OK
	assert.strictEqual(aliceSecret.toString('hex'), bobSecret.toString('hex'));
	```
**/
@:jsRequire("crypto", "DiffieHellman") extern class DiffieHellman {
	private function new();
	/**
		Generates private and public Diffie-Hellman key values unless they have been
		generated or computed already, and returns
		the public key in the specified `encoding`. This key should be
		transferred to the other party.
		If `encoding` is provided a string is returned; otherwise a `Buffer` is returned.
		
		This function is a thin wrapper around [`DH_generate_key()`](https://www.openssl.org/docs/man3.0/man3/DH_generate_key.html). In particular,
		once a private key has been generated or set, calling this function only updates
		the public key but does not generate a new private key.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function generateKeys():node.buffer.NonSharedBuffer;
	/**
		Computes the shared secret using `otherPublicKey` as the other
		party's public key and returns the computed shared secret. The supplied
		key is interpreted using the specified `inputEncoding`, and secret is
		encoded using specified `outputEncoding`.
		If the `inputEncoding` is not
		provided, `otherPublicKey` is expected to be a `Buffer`, `TypedArray`, or `DataView`.
		
		If `outputEncoding` is given a string is returned; otherwise, a `Buffer` is returned.
	**/
	@:overload(function(otherPublicKey:String, inputEncoding:BinaryToTextEncoding, ?outputEncoding:ts.Never):node.buffer.NonSharedBuffer { })
	@:overload(function(otherPublicKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, inputEncoding:Dynamic, outputEncoding:BinaryToTextEncoding):String { })
	@:overload(function(otherPublicKey:String, inputEncoding:BinaryToTextEncoding, outputEncoding:BinaryToTextEncoding):String { })
	function computeSecret(otherPublicKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, ?inputEncoding:ts.Never, ?outputEncoding:ts.Never):node.buffer.NonSharedBuffer;
	/**
		Returns the Diffie-Hellman prime in the specified `encoding`.
		If `encoding` is provided a string is
		returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPrime():node.buffer.NonSharedBuffer;
	/**
		Returns the Diffie-Hellman generator in the specified `encoding`.
		If `encoding` is provided a string is
		returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getGenerator():node.buffer.NonSharedBuffer;
	/**
		Returns the Diffie-Hellman public key in the specified `encoding`.
		If `encoding` is provided a
		string is returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPublicKey():node.buffer.NonSharedBuffer;
	/**
		Returns the Diffie-Hellman private key in the specified `encoding`.
		If `encoding` is provided a
		string is returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPrivateKey():node.buffer.NonSharedBuffer;
	/**
		Sets the Diffie-Hellman public key. If the `encoding` argument is provided, `publicKey` is expected
		to be a string. If no `encoding` is provided, `publicKey` is expected
		to be a `Buffer`, `TypedArray`, or `DataView`.
	**/
	@:overload(function(publicKey:String, encoding:global.nodejs.BufferEncoding):Void { })
	function setPublicKey(publicKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>):Void;
	/**
		Sets the Diffie-Hellman private key. If the `encoding` argument is provided,`privateKey` is expected
		to be a string. If no `encoding` is provided, `privateKey` is expected
		to be a `Buffer`, `TypedArray`, or `DataView`.
		
		This function does not automatically compute the associated public key. Either `diffieHellman.setPublicKey()` or `diffieHellman.generateKeys()` can be
		used to manually provide the public key or to automatically derive it.
	**/
	@:overload(function(privateKey:String, encoding:global.nodejs.BufferEncoding):Void { })
	function setPrivateKey(privateKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>):Void;
	/**
		A bit field containing any warnings and/or errors resulting from a check
		performed during initialization of the `DiffieHellman` object.
		
		The following values are valid for this property (as defined in `node:constants` module):
		
		* `DH_CHECK_P_NOT_SAFE_PRIME`
		* `DH_CHECK_P_NOT_PRIME`
		* `DH_UNABLE_TO_CHECK_GENERATOR`
		* `DH_NOT_SUITABLE_GENERATOR`
	**/
	var verifyError : Float;
	static var prototype : DiffieHellman;
}