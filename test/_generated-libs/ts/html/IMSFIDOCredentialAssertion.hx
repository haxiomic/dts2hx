package ts.html;
typedef IMSFIDOCredentialAssertion = {
	final algorithm : AlgorithmIdentifier;
	final attestation : Dynamic;
	final publicKey : String;
	final transportHints : std.Array<MSTransportType>;
	final id : String;
	final type : String;
};