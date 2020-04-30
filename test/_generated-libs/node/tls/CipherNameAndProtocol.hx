package node.tls;
extern typedef CipherNameAndProtocol = {
	/**
		The cipher name.
	**/
	var name : String;
	/**
		SSL/TLS protocol version.
	**/
	var version : String;
};