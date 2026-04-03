package js.html;

typedef AuthenticationExtensionsClientInputsJSON = {
	@:optional
	var appid : String;
	@:optional
	var credProps : Bool;
	@:optional
	var largeBlob : AuthenticationExtensionsLargeBlobInputsJSON;
	@:optional
	var prf : AuthenticationExtensionsPRFInputsJSON;
};