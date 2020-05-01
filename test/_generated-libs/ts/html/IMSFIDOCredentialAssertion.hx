package ts.html;
typedef IMSFIDOCredentialAssertion = {
	final algorithm : ts.AnyOf2<String, Algorithm>;
	final attestation : Dynamic;
	final publicKey : String;
	final transportHints : std.Array<String>;
	final id : String;
	final type : String;
};