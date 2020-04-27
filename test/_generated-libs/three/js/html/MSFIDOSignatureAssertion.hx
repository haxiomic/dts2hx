package js.html;
@:native("MSFIDOSignatureAssertion") @tsInterface extern class MSFIDOSignatureAssertion {
	function new();
	final signature : MSFIDOSignature;
	final id : String;
	final type : String;
	static var prototype : MSFIDOSignatureAssertion;
}