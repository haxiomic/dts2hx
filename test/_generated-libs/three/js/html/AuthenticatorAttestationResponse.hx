package js.html;
@:native("AuthenticatorAttestationResponse") extern class AuthenticatorAttestationResponse {
	function new();
	final attestationObject : js.lib.IArrayBuffer;
	final clientDataJSON : js.lib.IArrayBuffer;
	static var prototype : IAuthenticatorAttestationResponse;
}