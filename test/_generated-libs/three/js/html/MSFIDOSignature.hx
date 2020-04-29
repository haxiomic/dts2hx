package js.html;
@:native("MSFIDOSignature") extern class MSFIDOSignature {
	function new();
	final authnrData : String;
	final clientData : String;
	final signature : String;
	static var prototype : IMSFIDOSignature;
}