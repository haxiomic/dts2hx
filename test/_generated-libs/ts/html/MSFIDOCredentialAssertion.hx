package ts.html;
@:native("MSFIDOCredentialAssertion") extern class MSFIDOCredentialAssertion {
	function new();
	final algorithm : ts.AnyOf2<String, Algorithm>;
	final attestation : Dynamic;
	final publicKey : String;
	final transportHints : std.Array<String>;
	final id : String;
	final type : String;
	static var prototype : IMSFIDOCredentialAssertion;
}