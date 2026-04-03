package node.crypto.webcrypto;

/**
	Importing the `webcrypto` object (`import { webcrypto } from 'node:crypto'`) gives an instance of the `Crypto` class.
	`Crypto` is a singleton that provides access to the remainder of the crypto API.
**/
typedef Crypto = {
	/**
		Provides access to the `SubtleCrypto` API.
	**/
	final subtle : SubtleCrypto;
	/**
		Generates cryptographically strong random values.
		The given `typedArray` is filled with random values, and a reference to `typedArray` is returned.
		
		The given `typedArray` must be an integer-based instance of
		{@link
		NodeJS.TypedArray
		}
		, i.e. `Float32Array` and `Float64Array` are not accepted.
		
		An error will be thrown if the given `typedArray` is larger than 65,536 bytes.
	**/
	function getRandomValues<T:(ts.AnyOf9<js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>)>(typedArray:T):T;
	/**
		Generates a random
		{@link
		https://www.rfc-editor.org/rfc/rfc4122.txt RFC 4122
		}
		version 4 UUID.
		The UUID is generated using a cryptographic pseudorandom number generator.
	**/
	function randomUUID():String;
	var CryptoKey : CryptoKeyConstructor;
};