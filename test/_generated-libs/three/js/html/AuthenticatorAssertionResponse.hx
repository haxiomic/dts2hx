package js.html;
@:native("AuthenticatorAssertionResponse") @tsInterface extern class AuthenticatorAssertionResponse {
	function new();
	final authenticatorData : js.lib.ArrayBuffer;
	final signature : js.lib.ArrayBuffer;
	final userHandle : Null<js.lib.ArrayBuffer>;
	final clientDataJSON : js.lib.ArrayBuffer;
	static var prototype : AuthenticatorAssertionResponse;
}