package js.html;
extern typedef IMSFIDOCredentialAssertion = {
	final algorithm : haxe.extern.EitherType<String, Algorithm>;
	final attestation : Any;
	final publicKey : String;
	final transportHints : std.Array<String>;
	final id : String;
	final type : String;
};