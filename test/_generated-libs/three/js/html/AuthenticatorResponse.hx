package js.html;
@:native("AuthenticatorResponse") @tsInterface extern class AuthenticatorResponse {
	function new();
	final clientDataJSON : js.lib.ArrayBuffer;
	static var prototype : AuthenticatorResponse;
}