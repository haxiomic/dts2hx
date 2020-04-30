package ts.html;
@:native("WebAuthnAssertion") extern class WebAuthnAssertion {
	function new();
	final authenticatorData : ts.lib.IArrayBuffer;
	final clientData : ts.lib.IArrayBuffer;
	final credential : IScopedCredential;
	final signature : ts.lib.IArrayBuffer;
	static var prototype : IWebAuthnAssertion;
}