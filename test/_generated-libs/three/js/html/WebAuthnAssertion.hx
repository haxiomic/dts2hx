package js.html;
@:native("WebAuthnAssertion") @tsInterface extern class WebAuthnAssertion {
	function new();
	final authenticatorData : js.lib.ArrayBuffer;
	final clientData : js.lib.ArrayBuffer;
	final credential : ScopedCredential;
	final signature : js.lib.ArrayBuffer;
	static var prototype : WebAuthnAssertion;
}