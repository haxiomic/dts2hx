package js.html;

typedef AuthenticationExtensionsClientInputs = {
	@:optional
	var appid : String;
	@:optional
	var credProps : Bool;
	@:optional
	var credentialProtectionPolicy : String;
	@:optional
	var enforceCredentialProtectionPolicy : Bool;
	@:optional
	var hmacCreateSecret : Bool;
	@:optional
	var largeBlob : AuthenticationExtensionsLargeBlobInputs;
	@:optional
	var minPinLength : Bool;
	@:optional
	var prf : AuthenticationExtensionsPRFInputs;
};