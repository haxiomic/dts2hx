package ts.html;
@:native("MSFIDOCredentialAssertion") extern class MSFIDOCredentialAssertion {
	function new();
	final algorithm : AlgorithmIdentifier;
	final attestation : Dynamic;
	final publicKey : String;
	final transportHints : std.Array<MSTransportType>;
	final id : String;
	final type : String;
	static var prototype : IMSFIDOCredentialAssertion;
}