package js.html;

typedef AuthenticationExtensionsClientOutputs = {
	@:optional
	var appid : Bool;
	@:optional
	var credProps : CredentialPropertiesOutput;
	@:optional
	var hmacCreateSecret : Bool;
	@:optional
	var largeBlob : AuthenticationExtensionsLargeBlobOutputs;
	@:optional
	var prf : AuthenticationExtensionsPRFOutputs;
};