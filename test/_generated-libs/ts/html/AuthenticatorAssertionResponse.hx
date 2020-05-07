package ts.html;
@:native("AuthenticatorAssertionResponse") extern class AuthenticatorAssertionResponse {
	function new();
	final authenticatorData : ts.lib.ArrayBuffer;
	final signature : ts.lib.ArrayBuffer;
	final userHandle : Null<ts.lib.ArrayBuffer>;
	final clientDataJSON : ts.lib.ArrayBuffer;
	static var prototype : AuthenticatorAssertionResponse;
}