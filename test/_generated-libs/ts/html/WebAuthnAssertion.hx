package ts.html;
@:native("WebAuthnAssertion") extern class WebAuthnAssertion {
	function new();
	final authenticatorData : ts.lib.ArrayBuffer;
	final clientData : ts.lib.ArrayBuffer;
	final credential : ScopedCredential;
	final signature : ts.lib.ArrayBuffer;
	static var prototype : WebAuthnAssertion;
}