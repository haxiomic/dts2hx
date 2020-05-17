package node.tls;

typedef CipherNameAndProtocol = {
	/**
		The cipher name.
	**/
	var name : String;
	/**
		SSL/TLS protocol version.
	**/
	var version : String;
};