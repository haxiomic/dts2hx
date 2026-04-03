package node.tls;

typedef PxfObject = {
	/**
		PFX or PKCS12 encoded private key and certificate chain.
	**/
	var buf : ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>;
	/**
		Optional passphrase.
	**/
	@:optional
	var passphrase : String;
};