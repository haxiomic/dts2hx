package ts.html;
@:native("AuthenticatorAttestationResponse") extern class AuthenticatorAttestationResponse {
	function new();
	final attestationObject : ts.lib.IArrayBuffer;
	final clientDataJSON : ts.lib.IArrayBuffer;
	static var prototype : IAuthenticatorAttestationResponse;
}