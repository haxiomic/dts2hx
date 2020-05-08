package ts.html;
typedef IWebAuthnAssertion = {
	final authenticatorData : ts.lib.ArrayBuffer;
	final clientData : ts.lib.ArrayBuffer;
	final credential : ScopedCredential;
	final signature : ts.lib.ArrayBuffer;
};