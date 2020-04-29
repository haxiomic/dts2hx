package js.html;
@:native("AuthenticatorResponse") extern class AuthenticatorResponse {
	function new();
	final clientDataJSON : js.lib.IArrayBuffer;
	static var prototype : IAuthenticatorResponse;
}