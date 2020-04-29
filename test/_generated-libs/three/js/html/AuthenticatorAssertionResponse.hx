package js.html;
@:native("AuthenticatorAssertionResponse") extern class AuthenticatorAssertionResponse {
	function new();
	final authenticatorData : js.lib.IArrayBuffer;
	final signature : js.lib.IArrayBuffer;
	final userHandle : Null<js.lib.IArrayBuffer>;
	final clientDataJSON : js.lib.IArrayBuffer;
	static var prototype : IAuthenticatorAssertionResponse;
}