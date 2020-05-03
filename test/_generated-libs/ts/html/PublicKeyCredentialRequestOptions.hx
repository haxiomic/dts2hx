package ts.html;
typedef PublicKeyCredentialRequestOptions = {
	@:optional
	var allowCredentials : std.Array<PublicKeyCredentialDescriptor>;
	var challenge : BufferSource;
	@:optional
	var extensions : AuthenticationExtensionsClientInputs;
	@:optional
	var rpId : String;
	@:optional
	var timeout : Float;
	@:optional
	var userVerification : String;
};