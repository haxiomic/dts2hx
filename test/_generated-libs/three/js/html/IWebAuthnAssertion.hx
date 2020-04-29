package js.html;
extern typedef IWebAuthnAssertion = {
	final authenticatorData : js.lib.IArrayBuffer;
	final clientData : js.lib.IArrayBuffer;
	final credential : IScopedCredential;
	final signature : js.lib.IArrayBuffer;
};