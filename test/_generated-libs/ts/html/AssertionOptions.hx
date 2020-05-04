package ts.html;
typedef AssertionOptions = {
	@:optional
	var allowList : Array<ScopedCredentialDescriptor>;
	@:optional
	var extensions : WebAuthnExtensions;
	@:optional
	var rpId : String;
	@:optional
	var timeoutSeconds : Float;
};