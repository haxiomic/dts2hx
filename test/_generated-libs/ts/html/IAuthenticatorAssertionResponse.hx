package ts.html;
typedef IAuthenticatorAssertionResponse = {
	final authenticatorData : ts.lib.ArrayBuffer;
	final signature : ts.lib.ArrayBuffer;
	final userHandle : Null<ts.lib.ArrayBuffer>;
	final clientDataJSON : ts.lib.ArrayBuffer;
};