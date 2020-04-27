package node.tls;
extern interface CipherNameAndProtocol {
	/**
		The cipher name.
	**/
	var name : String;
	/**
		SSL/TLS protocol version.
	**/
	var version : String;
}