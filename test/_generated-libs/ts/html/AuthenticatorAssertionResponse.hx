package ts.html;
@:native("AuthenticatorAssertionResponse") extern class AuthenticatorAssertionResponse {
	function new();
	final authenticatorData : ts.lib.IArrayBuffer;
	final signature : ts.lib.IArrayBuffer;
	final userHandle : Null<ts.lib.IArrayBuffer>;
	final clientDataJSON : ts.lib.IArrayBuffer;
	static var prototype : IAuthenticatorAssertionResponse;
}