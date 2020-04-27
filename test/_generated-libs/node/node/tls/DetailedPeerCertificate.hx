package node.tls;
extern interface DetailedPeerCertificate extends PeerCertificate {
	var issuerCertificate : DetailedPeerCertificate;
}