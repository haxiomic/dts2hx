package ts.html;
extern typedef IAuthenticatorAssertionResponse = {
	final authenticatorData : ts.lib.IArrayBuffer;
	final signature : ts.lib.IArrayBuffer;
	final userHandle : Null<ts.lib.IArrayBuffer>;
	final clientDataJSON : ts.lib.IArrayBuffer;
};