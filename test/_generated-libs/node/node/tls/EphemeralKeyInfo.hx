package node.tls;

typedef EphemeralKeyInfo = {
	/**
		The supported types are 'DH' and 'ECDH'.
	**/
	var type : String;
	/**
		The name property is available only when type is 'ECDH'.
	**/
	@:optional
	var name : String;
	/**
		The size of parameter of an ephemeral key exchange.
	**/
	var size : Float;
};