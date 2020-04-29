package js.html;
extern typedef IAuthenticatorAssertionResponse = {
	final authenticatorData : js.lib.IArrayBuffer;
	final signature : js.lib.IArrayBuffer;
	final userHandle : Null<js.lib.IArrayBuffer>;
	final clientDataJSON : js.lib.IArrayBuffer;
};