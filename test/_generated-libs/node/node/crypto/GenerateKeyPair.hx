package node.crypto;

/**
	Generates a new asymmetric key pair of the given `type`. RSA, RSA-PSS, DSA, EC,
	Ed25519, Ed448, X25519, X448, and DH are currently supported.
	
	If a `publicKeyEncoding` or `privateKeyEncoding` was specified, this function
	behaves as if `keyObject.export()` had been called on its result. Otherwise,
	the respective part of the key is returned as a `KeyObject`.
	
	It is recommended to encode public keys as `'spki'` and private keys as `'pkcs8'` with encryption for long-term storage:
	
	```js
	const {
	  generateKeyPair,
	} = await import('node:crypto');
	
	generateKeyPair('rsa', {
	  modulusLength: 4096,
	  publicKeyEncoding: {
	    type: 'spki',
	    format: 'pem',
	  },
	  privateKeyEncoding: {
	    type: 'pkcs8',
	    format: 'pem',
	    cipher: 'aes-256-cbc',
	    passphrase: 'top secret',
	  },
	}, (err, publicKey, privateKey) => {
	  // Handle errors and use the generated key pair.
	});
	```
	
	On completion, `callback` will be called with `err` set to `undefined` and `publicKey` / `privateKey` representing the generated key pair.
	
	If this method is invoked as its `util.promisify()` ed version, it returns
	a `Promise` for an `Object` with `publicKey` and `privateKey` properties.
**/
@:jsRequire("crypto", "generateKeyPair") @valueModuleOnly extern class GenerateKeyPair {
	/**
		Generates a new asymmetric key pair of the given `type`. RSA, RSA-PSS, DSA, EC,
		Ed25519, Ed448, X25519, X448, and DH are currently supported.
		
		If a `publicKeyEncoding` or `privateKeyEncoding` was specified, this function
		behaves as if `keyObject.export()` had been called on its result. Otherwise,
		the respective part of the key is returned as a `KeyObject`.
		
		It is recommended to encode public keys as `'spki'` and private keys as `'pkcs8'` with encryption for long-term storage:
		
		```js
		const {
		  generateKeyPair,
		} = await import('node:crypto');
		
		generateKeyPair('rsa', {
		  modulusLength: 4096,
		  publicKeyEncoding: {
		    type: 'spki',
		    format: 'pem',
		  },
		  privateKeyEncoding: {
		    type: 'pkcs8',
		    format: 'pem',
		    cipher: 'aes-256-cbc',
		    passphrase: 'top secret',
		  },
		}, (err, publicKey, privateKey) => {
		  // Handle errors and use the generated key pair.
		});
		```
		
		On completion, `callback` will be called with `err` set to `undefined` and `publicKey` / `privateKey` representing the generated key pair.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a `Promise` for an `Object` with `publicKey` and `privateKey` properties.
	**/
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:RSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:RSAPSSKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:RSAPSSKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:RSAPSSKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:RSAPSSKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:RSAPSSKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<ED25519KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<ED448KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<X25519KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.NonSharedBuffer, privateKey:node.buffer.NonSharedBuffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<X448KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:selfCall
	static function call(type:String, options:RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void;
}