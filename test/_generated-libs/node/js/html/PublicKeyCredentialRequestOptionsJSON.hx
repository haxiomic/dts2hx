package js.html;

typedef PublicKeyCredentialRequestOptionsJSON = {
	@:optional
	var allowCredentials : Array<PublicKeyCredentialDescriptorJSON>;
	var challenge : String;
	@:optional
	var extensions : AuthenticationExtensionsClientInputsJSON;
	@:optional
	var hints : Array<String>;
	@:optional
	var rpId : String;
	@:optional
	var timeout : Float;
	@:optional
	var userVerification : String;
};