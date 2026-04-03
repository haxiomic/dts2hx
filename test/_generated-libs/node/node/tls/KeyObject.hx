package node.tls;

typedef KeyObject = {
	/**
		Private keys in PEM format.
	**/
	var pem : ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>;
	/**
		Optional passphrase.
	**/
	@:optional
	var passphrase : String;
};