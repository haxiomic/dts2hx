package ts.html;
@:native("MSFIDOSignatureAssertion") extern class MSFIDOSignatureAssertion {
	function new();
	final signature : IMSFIDOSignature;
	final id : String;
	final type : String;
	static var prototype : IMSFIDOSignatureAssertion;
}