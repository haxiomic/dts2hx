package ts.html;
@:native("AuthenticatorAttestationResponse") extern class AuthenticatorAttestationResponse {
	function new();
	final attestationObject : ts.lib.ArrayBuffer;
	final clientDataJSON : ts.lib.ArrayBuffer;
	static var prototype : AuthenticatorAttestationResponse;
}