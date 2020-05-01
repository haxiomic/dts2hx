package ts.html;
extern typedef PublicKeyCredentialCreationOptions = {
	@:optional
	var attestation : String;
	@:optional
	var authenticatorSelection : AuthenticatorSelectionCriteria;
	var challenge : ts.AnyOf2<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var excludeCredentials : std.Array<PublicKeyCredentialDescriptor>;
	@:optional
	var extensions : AuthenticationExtensionsClientInputs;
	var pubKeyCredParams : std.Array<PublicKeyCredentialParameters>;
	var rp : PublicKeyCredentialRpEntity;
	@:optional
	var timeout : Float;
	var user : PublicKeyCredentialUserEntity;
};