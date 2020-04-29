package js.html;
@:native("WebAuthnAssertion") extern class WebAuthnAssertion {
	function new();
	final authenticatorData : js.lib.IArrayBuffer;
	final clientData : js.lib.IArrayBuffer;
	final credential : IScopedCredential;
	final signature : js.lib.IArrayBuffer;
	static var prototype : IWebAuthnAssertion;
}