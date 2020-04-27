package js.html;
@:native("AuthenticatorAttestationResponse") @tsInterface extern class AuthenticatorAttestationResponse {
	function new();
	final attestationObject : js.lib.ArrayBuffer;
	final clientDataJSON : js.lib.ArrayBuffer;
	static var prototype : AuthenticatorAttestationResponse;
}