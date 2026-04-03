package js.html;

typedef PublicKeyCredentialCreationOptions = {
	@:optional
	var attestation : AttestationConveyancePreference;
	@:optional
	var authenticatorSelection : AuthenticatorSelectionCriteria;
	var challenge : js.lib.BufferSource;
	@:optional
	var excludeCredentials : Array<PublicKeyCredentialDescriptor>;
	@:optional
	var extensions : AuthenticationExtensionsClientInputs;
	var pubKeyCredParams : Array<PublicKeyCredentialParameters>;
	var rp : PublicKeyCredentialRpEntity;
	@:optional
	var timeout : Float;
	var user : PublicKeyCredentialUserEntity;
};