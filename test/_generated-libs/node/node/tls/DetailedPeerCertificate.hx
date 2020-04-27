package node.tls;
extern typedef DetailedPeerCertificate = PeerCertificate & { var issuerCertificate : DetailedPeerCertificate; };