package node.tls;
extern interface SecurePair {
	var encrypted : TLSSocket;
	var cleartext : TLSSocket;
}