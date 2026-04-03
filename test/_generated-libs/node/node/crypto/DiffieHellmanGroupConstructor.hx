package node.crypto;

typedef DiffieHellmanGroupConstructor = {
	@:selfCall
	function call(name:String):{
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
		dynamic function generateKeys():node.buffer.NonSharedBuffer;
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
		dynamic function computeSecret(otherPublicKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, ?inputEncoding:ts.Never, ?outputEncoding:ts.Never):node.buffer.NonSharedBuffer;
		/**
			Returns the Diffie-Hellman prime in the specified `encoding`.
			If `encoding` is provided a string is
			returned; otherwise a `Buffer` is returned.
		**/
		@:overload(function(encoding:BinaryToTextEncoding):String { })
		dynamic function getPrime():node.buffer.NonSharedBuffer;
		/**
			Returns the Diffie-Hellman generator in the specified `encoding`.
			If `encoding` is provided a string is
			returned; otherwise a `Buffer` is returned.
		**/
		@:overload(function(encoding:BinaryToTextEncoding):String { })
		dynamic function getGenerator():node.buffer.NonSharedBuffer;
		/**
			Returns the Diffie-Hellman public key in the specified `encoding`.
			If `encoding` is provided a
			string is returned; otherwise a `Buffer` is returned.
		**/
		@:overload(function(encoding:BinaryToTextEncoding):String { })
		dynamic function getPublicKey():node.buffer.NonSharedBuffer;
		/**
			Returns the Diffie-Hellman private key in the specified `encoding`.
			If `encoding` is provided a
			string is returned; otherwise a `Buffer` is returned.
		**/
		@:overload(function(encoding:BinaryToTextEncoding):String { })
		dynamic function getPrivateKey():node.buffer.NonSharedBuffer;
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
	};
	final prototype : {
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
		dynamic function generateKeys():node.buffer.NonSharedBuffer;
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
		dynamic function computeSecret(otherPublicKey:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>, ?inputEncoding:ts.Never, ?outputEncoding:ts.Never):node.buffer.NonSharedBuffer;
		/**
			Returns the Diffie-Hellman prime in the specified `encoding`.
			If `encoding` is provided a string is
			returned; otherwise a `Buffer` is returned.
		**/
		@:overload(function(encoding:BinaryToTextEncoding):String { })
		dynamic function getPrime():node.buffer.NonSharedBuffer;
		/**
			Returns the Diffie-Hellman generator in the specified `encoding`.
			If `encoding` is provided a string is
			returned; otherwise a `Buffer` is returned.
		**/
		@:overload(function(encoding:BinaryToTextEncoding):String { })
		dynamic function getGenerator():node.buffer.NonSharedBuffer;
		/**
			Returns the Diffie-Hellman public key in the specified `encoding`.
			If `encoding` is provided a
			string is returned; otherwise a `Buffer` is returned.
		**/
		@:overload(function(encoding:BinaryToTextEncoding):String { })
		dynamic function getPublicKey():node.buffer.NonSharedBuffer;
		/**
			Returns the Diffie-Hellman private key in the specified `encoding`.
			If `encoding` is provided a
			string is returned; otherwise a `Buffer` is returned.
		**/
		@:overload(function(encoding:BinaryToTextEncoding):String { })
		dynamic function getPrivateKey():node.buffer.NonSharedBuffer;
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
	};
};