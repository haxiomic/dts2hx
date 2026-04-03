package js.html;

typedef PublicKeyCredentialCreationOptionsJSON = {
	@:optional
	var attestation : String;
	@:optional
	var authenticatorSelection : AuthenticatorSelectionCriteria;
	var challenge : String;
	@:optional
	var excludeCredentials : Array<PublicKeyCredentialDescriptorJSON>;
	@:optional
	var extensions : AuthenticationExtensionsClientInputsJSON;
	@:optional
	var hints : Array<String>;
	var pubKeyCredParams : Array<PublicKeyCredentialParameters>;
	var rp : PublicKeyCredentialRpEntity;
	@:optional
	var timeout : Float;
	var user : PublicKeyCredentialUserEntityJSON;
};